# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/xa/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-xa"
  spec.version       = Ruboty::Xa::VERSION
  spec.authors       = ["Taga Yasunori"]
  spec.email         = ["yasukun.taga@gmail.com"]
  spec.summary       = %q{An ruboty handler to grow the grass.}
  spec.homepage      = "https://github.com/yassun/ruboty-xa"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
