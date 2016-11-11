# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'textpants/version'

Gem::Specification.new do |spec|
  spec.name          = 'textpants'
  spec.version       = Textpants::VERSION
  spec.authors       = ['ofk']
  spec.email         = ['ofkjpn+github@gmail.com']

  spec.summary       = 'textpants is utilities for string.'
  spec.description   = 'textpants is utilities for string.'
  spec.homepage      = 'https://github.com/ofk/textpants'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rubocop'
end
