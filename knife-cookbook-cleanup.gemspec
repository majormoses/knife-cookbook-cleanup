# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'knife-cookbook-cleanup/version'

Gem::Specification.new do |s|
  s.name        = 'knife-cookbook-cleanup'
  s.version     = Knife::CookbookCleanup::VERSION
  s.platform    = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.authors = [
    'Anthony Goddard',
    'Fletcher Nichol',
    'Heavy Water Operations',
    'Ben Abrams'
  ]
  s.email       = ['me@benabrams.it']
  s.homepage    = 'https://github.com/majormoses/knife-cookbook-cleanup'
  s.summary     = 'Chef Knife plugin to remove all cookbooks except the latest'
  s.description = 'Deletes all cookbooks from the chef server except for x versions'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 2.3.1'

  s.add_dependency 'chef', '> 12.0'

  s.add_development_dependency 'bundler', '~> 1.6'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop', '~> 0.51.0'
end
