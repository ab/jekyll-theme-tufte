# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-theme-tufte'
  spec.version       = '0.3.0'
  spec.authors       = ['Andy Brody', 'Stephan Druskat', 'Clay H']
  spec.email         = ['git@abrody.com']

  spec.summary       = 'A modern Jekyll theme based on tufte-css, in the style of Edward Tufte'
  spec.homepage      = 'https://github.com/ab/jekyll-theme-tufte'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").select { |f|
    f.match(%r{^(assets|blog|_data|_layouts|_includes|_sass|lib|LICENSE|README|_config\.yml)}i)
  }

  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'jekyll', '~> 4.3'
  spec.add_runtime_dependency 'jekyll-feed', '~> 0.17'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
