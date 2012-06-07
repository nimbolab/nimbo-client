# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nimbo/version"

Gem::Specification.new do |s|
  s.name        = "nimbo"
  s.version     = Nimbo::VERSION
  s.authors     = ["Grzegorz Biesiadecki"]
  s.email       = ["gbiesiadecki@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{NimboLab client}
  s.description = %q{NimboLab client}

  s.rubyforge_project = "nimbo"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
end
