# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clean_assert/version'

Gem::Specification.new do |spec|
  spec.name          = "clean_assert"
  spec.version       = CleanAssert::VERSION
  spec.authors       = ["Niclas Nilsson"]
  spec.email         = ["niclas@niclasnilsson.se"]
  spec.description   = %q{A Ruby gem to get really clean asserts}
  spec.summary       = %q{A Ruby gem to get really clean asserts}
  spec.homepage      = "https://github.com/niclasnilsson/clean_assert"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "facets", "~> 3.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
