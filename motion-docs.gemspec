# -*- encoding: utf-8 -*-
require File.expand_path('../lib/motion-docs/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "motion-docs"
  spec.version       = MotionDocs::VERSION
  spec.authors       = ["Jamon Holmgren"]
  spec.email         = ["jamon@clearsightstudio.com"]
  spec.description   = %q{Provides class and method documentation right in your RubyMotion REPL. Only activates when running on simulator.}
  spec.summary       = %q{Provides class and method documentation right in your RubyMotion REPL.}
  spec.homepage      = "http://github.com/jamonholmgren/motion-docs"
  spec.license       = "MIT"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
