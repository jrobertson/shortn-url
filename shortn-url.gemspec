Gem::Specification.new do |s|
  s.name = 'shortn-url'
  s.version = '0.1.6'
  s.summary = 'shortn-url'
    s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb'] 
  s.signing_key = '../privatekeys/shortn-url.pem'
  s.cert_chain  = ['gem-public_cert.pem']
end
