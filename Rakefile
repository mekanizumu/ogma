require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = ["test/*.rb"]
end

desc "Run tests"
task :default => :test