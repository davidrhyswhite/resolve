# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'resolve/version'

Gem::Specification.new do |spec|
  spec.name          = "resolve"
  spec.version       = Resolve::VERSION
  spec.authors       = ["David White"]
  spec.email         = ["david.white@spry-soft.com"]
  spec.description   = %q{Simplified Ruby library for handling HTTP requests and responses}
  spec.summary       = spec.description
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^test/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
