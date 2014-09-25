# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bugsnag_async_notifier/version'

Gem::Specification.new do |spec|
  spec.name          = "bugsnag_async_notifier"
  spec.version       = BugsnagAsyncNotifier::VERSION
  spec.authors       = ["Trung Pham"]
  spec.email         = ["trung@phamcom.com"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "bugsnag"
  spec.add_development_dependency "sucker_punch"
end
