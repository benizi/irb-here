# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "irb-here/version"

Gem::Specification.new do |s|
  s.name        = "irb-here"
  s.version     = Irb::Here::VERSION
  s.authors     = ["Benjamin R. Haskell"]
  s.email       = ["ruby@benizi.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "irb-here"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
