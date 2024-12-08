# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "minima"
  spec.version       = "0.1.0"
  spec.authors       = ["chinmay"]
  spec.email         = ["acbharadwaj@gmail.com"]

  spec.summary       = "Lets start to write a short summary, because Rubygems requires one"
  spec.homepage      = "https://chinmayb.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.3"
end
