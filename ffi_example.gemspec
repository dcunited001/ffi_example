# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ffi_example/version'

Gem::Specification.new do |spec|
  spec.extensions << 'ext/Rakefile'

  spec.name          = "ffi_example"
  spec.version       = FfiExample::VERSION
  spec.authors       = ["David Conner"]
  spec.email         = ["dconner.pro@gmail.com"]
  spec.description   = %q(FFI Compiler Example)
  spec.summary       = %q(FFI Compiler  Example)
  spec.homepage      = ""
  spec.license       = "MIT"


  spec.files = %w(ffi_example.gemspec) + Dir.glob("{lib,spec,ext}/**/*")

#  spec.files         = `git ls-files`.split($/)
#  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
#  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ffi", "~> 1.9.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "ffi-compiler", "~> 0.1.3"
end
