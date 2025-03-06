require_relative 'lib/fastlane_plugin_expo/version'

Gem::Specification.new do |spec|
  spec.name          = "fastlane_plugin_expo"
  spec.version       = FastlanePluginExpo::VERSION
  spec.authors       = ["Aram Hayrapetyan"]
  spec.email         = ["aramhrptn@hotmail.com"]

  spec.summary       = "Fastlane plugin for Expo"
  spec.homepage      = "https://github.com/ChalkboardHQ/fastlane-plugin-expo"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/fastlane_plugin_expo/extconf.rb"]

  spec.add_runtime_dependency 'fastlane'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'webmock'
end
