Gem::Specification.new do |s|
  s.name = 'shortn-url'
  s.version = '0.1.8'
  s.summary = 'shortn-url'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb'] 
  s.signing_key = '../privatekeys/shortn-url.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.add_dependency ('nokogiri')
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/shortn-url'
end
