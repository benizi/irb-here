# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "irb-here/version"

Gem::Specification.new do |s|
  s.name        = "irb-here"
  s.version     = Irb::Here::VERSION
  s.authors     = ["Benjamin R. Haskell"]
  s.email       = ["ruby@benizi.com"]
  s.homepage    = ""
  s.summary     = 'Add some simple hooks for starting an IRB session'
  s.description = <<DESC
Add some simple hooks for starting an IRB session.

# code code code
binding.irb  # starts an IRB session in the current context
DESC

  #s.rubyforge_project = "irb-here"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
