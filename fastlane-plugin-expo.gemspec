lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/expo/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-expo'
  spec.version       = Fastlane::Expo::VERSION
  spec.authors       = ['Aram Hayrapetyan']
  spec.email         = ['aramhrptn@hotmail.com']

  spec.summary       = 'Fastlane plugin for Expo'
  spec.homepage      = 'https://github.com/ChalkboardHQ/fastlane-plugin-expo'
  spec.license       = 'MIT'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.require_paths = ['lib']
  spec.metadata['rubygems_mfa_required'] = 'true'
  spec.required_ruby_version = '>= 2.6'

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  # spec.add_dependency 'your-dependency', '~> 1.0.0'
end
