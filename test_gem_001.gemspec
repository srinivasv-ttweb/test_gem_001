
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "test_gem_001/version"

Gem::Specification.new do |spec|
  spec.name          = "test_gem_001"
  spec.version       = TestGem001::VERSION
  spec.authors       = ["srinivasv-ttweb"]
  spec.email         = ["svuppala@traveltripper.com"]

  spec.summary       = %q{My first ruby gem}
  spec.homepage      = "https://github.com/srinivasv-ttweb/test_gem_001"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
