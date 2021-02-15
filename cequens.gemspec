# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cequens/version'

Gem::Specification.new do |spec|
  spec.name          = 'cequens'
  spec.version       = Cequens::VERSION
  spec.authors       = ['Ahmed Ali']
  spec.email         = ['ahmed.saraya90@gmail.com']

  spec.summary       = 'A library to interface with Cequens SMS gateway API.'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = 'https://github.com/AhmedAIbrahim/cequens'
  spec.metadata['source_code_uri'] = 'https://github.com/AhmedAIbrahim/cequens'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '~> 2.6.0'
  spec.add_dependency 'faraday', '~> 0.17.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'byebug', '~> 11.0', '>= 11.0.1'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end