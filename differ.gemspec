# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'differ/version'

Gem::Specification.new do |spec|
  spec.name          = "ninja-differ"
  spec.version       = Differ::VERSION
  spec.authors       = ["Frank Koehl", "Pieter van de Bruggen", "Jonas Schubert Erlandsson", "Eddie Cianci", "Chad Boyd"]
  spec.date          = "2022-10-26"
  spec.email         = ["fkoehl@gmail.com", "pvande@gmail.com", "jonas.schubert.erlandsson@my-codeworks.com", "chad@txt2give.co"]
  spec.description   = "A simple gem for generating string diffs"
  spec.summary       = "A simple gem for generating string diffs"
  spec.homepage      = "https://github.com/BattleBrisket/ninja-differ"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rspec', '~> 3.1.0'
end
