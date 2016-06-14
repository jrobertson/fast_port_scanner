Gem::Specification.new do |s|
  s.name = 'fast_port_scanner'
  s.version = '0.1.0'
  s.summary = 'A fast and simple port scanner which uses TCPSocket, Timeout, and threads.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/fast_port_scanner.rb']
  s.signing_key = '../privatekeys/fast_port_scanner.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/fast_port_scanner'
end
