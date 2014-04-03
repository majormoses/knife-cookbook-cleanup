# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "knife-cookbook-cleanup/version"

Gem::Specification.new do |s|
  s.name        = "knife-cookbook-cleanup"
  s.version     = Knife::CookbookCleanup::VERSION
  s.platform    = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.md", "LICENSE" ]
  s.authors     = ["Heavy Water Operations"]
  s.email       = ["support@hw-ops.com"]
  s.homepage    = "https://github.com/heavywater/knife-cookbook-cleanup"
  s.summary     = %q{Chef Knife plugin to remove all cookbooks except the latest}
  s.description = %q{Deletes all cookbooks from the chef server except for the latest versions}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
