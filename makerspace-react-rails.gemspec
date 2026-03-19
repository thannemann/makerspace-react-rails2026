
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "makerspace/react/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "makerspace-react-Rails2026"
  spec.version       = Makerspace::React::Rails2026::VERSION
  spec.authors       = ["Manchester Makerspace"]
  spec.email         = ["kkadow@manchestermakerspace.org"]

  spec.summary       = %q{Makerspace-react-2026 but for Rails.}
  spec.homepage      = "https://github.com/ManchesterMakerspace/makerspace-react-Rails-2026"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
