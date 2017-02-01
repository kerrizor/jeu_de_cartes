# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jeu_de_cartes/version'

Gem::Specification.new do |spec|
  spec.name          = "jeu_de_cartes"
  spec.version       = JeuDeCartes::VERSION
  spec.authors       = ["Kerri Miller"]
  spec.email         = ["kerrizor@kerrizor.com"]
  spec.description   = %q{A standard deck of cards}
  spec.summary       = %q{Models a basic deck of 52 cards, and the basic actions
                            associated with it.}
  spec.homepage      = "https://github.com/kerrizor/jeu_de_cartes"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubystats"
end
