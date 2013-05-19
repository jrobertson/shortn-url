Gem::Specification.new do |s|
  s.name = 'shortn-url'
  s.version = '0.1.7'
  s.summary = 'shortn-url'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb'] 
  s.signing_key = '../privatekeys/shortn-url.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.add_dependency ('nokogiri')
end
