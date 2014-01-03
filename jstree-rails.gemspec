require File.expand_path('../lib/jstree/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'jstree-rails'
  s.version     = Jstree::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = 'Tristan McHardie'
  s.email       = 'tristan@panmedia.co.nz'
  s.homepage    = 'http://github.com/xinlangzi/jstree-rails'
  s.summary     = 'Use jsTree with Rails 3.2+'
  s.description = 'This gem provides jsTree for your Rails 3.2+ application.'
  s.files       = `git ls-files`.split("\n")

  s.add_dependency 'rails', '>= 3.2'
end
