# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "styleguides/version"

Gem::Specification.new do |s|
  s.name        = "styleguides"
  s.version     = Styleguides::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Corey Innis"]
  s.email       = ["corey@coolerator.net"]
  s.homepage    = ""
  s.summary     = %q{Adds style guides to a Rails application.}
  s.description = %q{To use style guides in your application, simply add views in app/views/styleguides (nested paths are allowed).}

  s.rubyforge_project = "styleguides"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
