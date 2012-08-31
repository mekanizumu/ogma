# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ogma/version"

Gem::Specification.new do |s|
  s.name        = "ogma"
  s.version     = Ogma::VERSION
  s.authors     = ["Sergey Aldosev"]
  s.email       = ["stichie@gmail.com"]
  s.homepage    = ""
  s.summary     = "russian to english transliteration gem"
  s.description = "simple russian to english transliteration gem with specific ukrainian letters support"

  s.add_development_dependency "test-unit"

  s.rubyforge_project = "ogma"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
