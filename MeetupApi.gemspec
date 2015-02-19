# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'MeetupApi/version'

Gem::Specification.new do |spec|
  spec.name          = "MeetupApi"
  spec.version       = MeetupApi::VERSION
  spec.authors       = ["Kevin Kirsche"]
  spec.email         = ["kev.kirsche@gmail.com"]

  spec.summary       = %q{Wrapper for the Meetup Api}
  spec.description   = %q{Wrapper allowing users to interact with the Meetup API.}
  spec.homepage      = "https://github.com/kkirsche/Meetup-API"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
