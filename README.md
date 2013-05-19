# Store and retrieve short URLs using the Shortn-url gem

    require 'shortn-url'}

    snurl = ShortnUrl.new('surl.xml')
    snurl.full_url('http://www.wired.com/')
    #=> aa

    snurl.full_url('http://forrst.com/posts/Ban_IP_addresses_from_Asterisk-XDH')
    #=> ae

    snurl.short_url('aa')
    #=> "http://www.wired.com/"

    snurl.short_url('ab') # if a URI doesn't exist it will return an empty string
    #=> ""

    snurl.short_url('ae')
    #=> "http://forrst.com/posts/Ban_IP_addresses_from_Asterisk-XDH"

Note: To crete the 'surl.xml' file you can use the short-url-creator gem.

## Resources

* [Introducing the Short URL Creator gem](http://www.jamesrobertson.eu/snippets/2013/may/19/introducing-the-short-url-creator-gem.html)
