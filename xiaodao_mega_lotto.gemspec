
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "xiaodao_mega_lotto/version"

Gem::Specification.new do |spec|
  spec.name          = "xiaodao_mega_lotto"
  spec.version       = XiaodaoMegaLotto::VERSION
  spec.authors       = ["liupc-ubuntu"]
  spec.email         = ["liu_xiaodao@163.com"]

  spec.summary       = "Practice work"
  spec.description   = "Please do not use"
  spec.homepage      = "http://robot.liuxiaodap.top"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  # for git-like commonad-line
  spec.add_dependency "gli", "~> 2.12.2"
end
