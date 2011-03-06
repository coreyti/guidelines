# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guidelines/version"

Gem::Specification.new do |s|
  s.name        = "guidelines"
  s.version     = Guidelines::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Corey Innis"]
  s.email       = ["corey@coolerator.net"]
  s.homepage    = ""
  s.summary     = %q{Adds guidelines to a Rails application.}
  s.description = %q{To use guidelines in your application, simply add views in app/views/guidelines (nested paths are allowed).}

  s.rubyforge_project = "guidelines"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
