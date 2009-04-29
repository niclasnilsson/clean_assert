Gem::Specification.new do |s|
  s.name = %q{clean-assert}
  s.version = "0.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Niclas Nilsson"]
  s.date = %q{2009-04-29}
  s.description = %q{A Ruby library to get really clean asserts.

Example:

  assert / "name != nil" / "not name.empty?" / "age >= 21"

This will do three separate assertion checks and will give you an error message that includes
the broken assertion code, the class and in which method. No need for having first the actual assertion and
a strained error message that you normally have to write. This is executable, Design by Contract style.}
  s.email = ["niclas@niclasnilsson.se"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "clean-assert.gemspec", "lib/clean-assert.rb", "lib/clean-assert/clean-assert.rb", "script/console", "script/destroy", "script/generate", "spec/clean_assert_spec.rb", "spec/regular_methods.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/niclasnilsson/clean-assert/}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{clean-assert}
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{A Ruby library to get really clean asserts}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<newgem>, [">= 1.3.0"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<newgem>, [">= 1.3.0"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<newgem>, [">= 1.3.0"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
