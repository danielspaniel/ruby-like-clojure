require_relative "lib/ruby_like_clojure/version"

Gem::Specification.new do |spec|
  spec.name = "ruby_like_clojure"
  spec.version = RubyLikeClojure::VERSION
  spec.authors = ["Dan Sudol"]
  spec.email = ["dansudol@yahoo.com"]

  spec.summary = "Clojure functions implemented in Ruby."
  spec.description = "Clojure functions implemented in Ruby."
  spec.homepage = "http://www.github.com/danielsudol/ruby_like_clojure"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://www.github.com/danielsudol/ruby_like_clojure"
  spec.metadata["changelog_uri"] = "http://www.github.com/danielsudol/ruby_like_clojure/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE.txt]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
