# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uxunity/version'

Gem::Specification.new do |spec|
  spec.name          = "uxunity"
  spec.version       = Uxunity::VERSION
  spec.authors       = ["Ron Snow"]
  spec.email         = ["ronsnow-gem@menloworld.com"]
  spec.summary       = %q{VMware Unity theme assets for SASS.}
  spec.description   = %q{VMware Unity theme assets for SASS as a compass extension.}
  spec.homepage      = "https://github.com/ronsnow/ux-unity"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "compass"
  spec.add_dependency "sass-globbing"
end
