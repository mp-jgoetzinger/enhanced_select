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
  s.summary     = "Enhances ActionView with a customizable select form helper."
  s.description = "Enhances ActionView with a customizable select form helper where any valid HTML attribute can be applied."

  s.rdoc_options << "CHANGELOG.rdoc"
  s.add_dependency "rails", "~> 3.1.0"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{|file| File.basename file}
  s.require_paths = ["lib"]
end
