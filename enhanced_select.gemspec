# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "enhanced_select/version"

Gem::Specification.new do |s|
  s.name                  = "enhanced_select"
  s.version               = EnhancedSelect::VERSION
  s.platform              = Gem::Platform::RUBY
  s.author                = "Brooke Kuhlmann"
  s.email                 = "brooke@redalchemist.com"
  s.homepage              = "http://www.redalchemist.com"
  s.summary               = "Enhances ActionView with a customizable select form helper."
  s.description           = "Enhances ActionView with a customizable select form helper where any valid HTML attribute can be applied."
  s.license               = "MIT"
  s.post_install_message	= "(W): www.redalchemist.com. (T): @ralchemist."

  s.required_ruby_version = "~> 1.9.0"
  s.add_dependency "rails", "~> 3.0"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency("rb-fsevent") if RUBY_PLATFORM =~ /darwin/i
  s.add_development_dependency "guard-rspec"
  
  s.files            = Dir["lib/**/*"]
  s.extra_rdoc_files = Dir["README*", "CHANGELOG*", "LICENSE*"]
  s.require_paths    = ["lib"]
end
