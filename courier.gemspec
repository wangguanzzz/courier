require_relative 'lib/courier/version'

Gem::Specification.new do |spec|
  spec.name          = "courier"
  spec.version       = Courier::VERSION
  spec.authors       = ["chris wang"]
  spec.email         = ["wangguanzzz@gmail.com"]

  spec.summary       = ""
  spec.description   = ""
  spec.homepage      = "http://proceedwell.com"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/wangguanzzz/courier.git"
  spec.metadata["changelog_uri"] = "https://github.com/wangguanzzz/courier.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables << 'courier'
  spec.require_paths = ["lib"]
end
