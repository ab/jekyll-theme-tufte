# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-tufte"
  spec.version       = "0.1.0"
  spec.authors       = ["Andy Brody", "Stephan Druskat", "Clay H"]
  spec.email         = ["git@abrody.com"]

  spec.summary       = "Jekyll theme based on tufte-css, in the style of Edward Tufte"
  spec.homepage      = "https://github.com/ab/jekyll-theme-tufte"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.3"
end
