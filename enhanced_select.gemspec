# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "enhanced_select/version"

Gem::Specification.new do |s|
  s.name        = "enhanced_select"
  s.version     = EnhancedSelect::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brooke Kuhlmann"]
  s.email       = ["brooke@redalchemist.com"]
  s.homepage    = "http://www.redalchemist.com"
  s.summary     = "An enhanced select helper for forms that allows you to use the full HTML spec for select option elements."
  s.description = "Enhances the default capabilities found with the Rails select helper. Instead of being able to supply just the value, text, and selected/disabled attributes, you can use all valid HTML attributes for select option elements."

  s.required_ruby_version = "~> 1.8.7"
  s.rdoc_options << "CHANGELOG.rdoc"
  s.add_dependency "rails", "~> 3.0.0"
  s.add_development_dependency "rspec"
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{|file| File.basename file}
  s.require_paths = ["lib"]
end
