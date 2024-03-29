# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prct10/version'

Gem::Specification.new do |spec|
  spec.name          = "prct10"
  spec.version       = Prct10::VERSION
  spec.authors       = ["Fabián Díaz Lorenzo"]
  spec.email         = ["alu0100702545@ull.edu.es"]
  spec.summary       = %q{Practica Finalizada}
  spec.description   = %q{Chiquito tonto el que use esta gema }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec' ,'~> 2.11'	
end
#gem.add_development_dependency 'rspec', '~> 2.11'
