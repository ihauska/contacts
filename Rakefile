require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "erc-contacts"
  gem.homepage = "https://github.com/kulesa/contacts"
  gem.license = "MIT"
  gem.summary = "Import users' contacts lists from Google, Yahoo!, and Windows Live."
  gem.description = "Import users' contacts lists from Google, Yahoo!, and Windows Live."
  gem.email = "kulesa@gmail.com"
  gem.authors = ["Mislav Marohnic", "George Odata", "Julian Countu"]
end

Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

task :default => :spec
