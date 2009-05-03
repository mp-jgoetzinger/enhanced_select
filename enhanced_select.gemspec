# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{enhanced_select}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brooke Kuhlmann"]
  s.date = %q{2009-05-03}
  s.description = %q{Enhances the default capabilities found with the Rails select helper. Instead of being able to supply just the value, text, and selected/disabled attributes, you can use all valid HTML attributes for select option elements.}
  s.email = %q{aeonscope@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.rdoc",
    "README.rdoc"
  ]
  s.files = [
    "CHANGELOG.rdoc",
    "LICENSE.rdoc",
    "README.rdoc",
    "Rakefile",
    "VERSION.yml",
    "lib/enhanced_select.rb",
    "test/enhanced_select_test.rb",
    "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/aeonscope/enhanced_select}
  s.rdoc_options = ["--charset=UTF-8", "CHANGELOG.rdoc"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.6")
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{An enhanced select helper for forms that allows you to use the full HTML spec for select option elements.}
  s.test_files = [
    "test/enhanced_select_test.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 2.3.2"])
    else
      s.add_dependency(%q<rails>, [">= 2.3.2"])
    end
  else
    s.add_dependency(%q<rails>, [">= 2.3.2"])
  end
end