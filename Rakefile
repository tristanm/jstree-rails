require 'bundler/gem_tasks'

desc 'Validate the gemspec'
task :validate do
  eval(File.read(Dir['*.gemspec'].first)).validate
end
