# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clean-assert/version'

Gem::Specification.new do |spec|
  spec.name          = "clean-assert"
  spec.version       = Clean::Assert::VERSION
  spec.authors       = ["Niclas Nilsson"]
  spec.email         = ["niclas@niclasnilsson.se"]
  spec.description   = %q{A Ruby gem to get really clean asserts}
  spec.summary       = %q{A Ruby gem to get really clean asserts}
  spec.homepage      = "https://github.com/niclasnilsson/clean-assert"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "facets", "~> 2.9"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
