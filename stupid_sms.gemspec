# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stupid_sms/version'

Gem::Specification.new do |spec|
  spec.name          = 'stupid_sms'
  spec.version       = StupidSMS::VERSION
  spec.authors       = ['Jacob Burenstam']
  spec.email         = ['burenstam@gmail.com']

  spec.summary       = %q{Send SMS with ease.}
  spec.description   = %q{Send SMS with ease, either one by one or in bulk.}
  spec.homepage      = 'https://github.com/buren/stupid_sms'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'twilio-ruby', '~> 4.11'
  spec.add_dependency 'honey_format', '~> 0.2'
  spec.add_dependency 'global_phone', '~> 1.0'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'byebug'
end
