require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "enhanced_select"
    gem.summary = "An enhanced select helper for forms that allows you to use the full HTML spec for select option elements."
    gem.description = "Enhances the default capabilities found with the Rails select helper. Instead of being able to supply just the value, text, and selected/disabled attributes, you can use all valid HTML attributes for select option elements."
    gem.authors = ["Brooke Kuhlmann"]
    gem.email = "aeonscope@gmail.com"
    gem.homepage = "http://github.com/aeonscope/enhanced_select"
		gem.required_ruby_version = ">= 1.8.6"
		gem.add_dependency "rails", ">= 2.3.2"
		gem.rdoc_options << "CHANGELOG.rdoc"
		gem.files = FileList["[A-Z]*", "{bin,lib,generators,rails_generators,test,spec}/**/*"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/*_test.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION.yml')
    config = YAML.load(File.read('VERSION.yml'))
    version = "#{config[:major]}.#{config[:minor]}.#{config[:patch]}"
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "enhanced_select #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

