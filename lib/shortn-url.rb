#!/usr/bin/ruby

# file: shortn-url.rb

require 'nokogiri'

class ShortnUrl

  def initialize(filepath)
    @filepath = filepath
    @doc = Nokogiri::XML(File.open(filepath,'r').read)
  end

  # fetch the short url if it already exists otherwise use a new short url
  def full_url(s)

    short_url = @doc.xpath("urls/records/url[full_url='#{s}']/short_url").text
    if short_url.empty? then
      node = @doc.xpath("urls/records/url[full_url='']")[0]
      node.xpath('full_url')[0].content = s

      node['last_modified'] = Time.now.to_s
      save()
      node.xpath('short_url').text
    else
      short_url
    end

  end

  def short_url(s)
    @doc.xpath("urls/records/url[short_url='#{s}']/full_url").text
  end

  private

  def save()
    File.open(@filepath,'w') do |f| 
      f.write @doc.serialize(:encoding => 'UTF-8') do |config|
        config.format.as_xml
      end
    end
  end
end
