# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "adapter/maglev/version"

Gem::Specification.new do |s|
  s.name        = "adapter-maglev"
  s.version     = Adapter::Maglev::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["ecin"]
  s.email       = ["ecin@copypastel.com"]
  s.homepage    = ""
  s.summary     = %q{Adapter for Maglev}
  s.description = %q{Adapter for Maglev}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'adapter', '~> 0.5.1'
  s.add_dependency 'maglev', '~> 2.1.1'
end
