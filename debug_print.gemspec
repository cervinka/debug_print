# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'debug_print/version'

Gem::Specification.new do |spec|
  spec.name          = "debug_print"
  spec.version       = DebugPrint::VERSION
  spec.authors       = ["Petr Cervinka"]
  spec.email         = ["petr@petrcervinka.cz"]
  spec.summary       = %q{Very simple gem for debug printings.}
  spec.description   = %q{Ever placed `puts`, `pp` or `ap` for debugging purposes in the code and then forgot where the prints come from? Use `dp` (or `debug_print`) instead! `dp` simply prints header line with information about caller. }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
