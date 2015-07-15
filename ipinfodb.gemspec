# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ipinfodb/version'

Gem::Specification.new do |spec|
  spec.name          = "ipinfodb"
  spec.version       = Ipinfodb::VERSION
  spec.authors       = ["Maxim Djuliy"]
  spec.email         = ["mak7.dj@gmail.com"]
  spec.description   = %q{API interface for http://ipinfodb.com }
  spec.summary       = "just for funn"
  spec.homepage      = "https://github.com/max-si-m/ipinfodb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.13.5"
  
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end