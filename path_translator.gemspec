# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'path_translator/version'

Gem::Specification.new do |spec|
  spec.name          = "path_translator"
  spec.version       = PathTranslator::VERSION
  spec.authors       = ["Howard Ding"]
  spec.email         = ["hding2@illinois.edu"]

  spec.summary       = %q{Translate between relative and absolute paths.}
  spec.description   = %q{Specify one or more root paths. Then translate paths relative to those root paths and
                          provide other useful operations.}
  spec.homepage      = "https://github.com/medusa-project/path_translator"
  spec.license       = "University of Illinois/NCSA Open Source License"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
