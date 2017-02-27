# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/ignore_forwarded_host/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-ignore_forwarded_host"
  spec.version       = Rack::IgnoreForwardedHost::VERSION
  spec.authors       = ["Micah Woods", "Matthew Conway"]
  spec.email         = ["mwoods@heroku.com", "conway@heroku.com"]

  spec.summary       = %q{Ignores X-Forwarded-Host header to prevent malicious redirects}
  spec.homepage      = "https://github.com/heroku/rack-ignore_forwarded_host"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "sinatra", "~> 2.0.0.beta2"
  spec.add_development_dependency "rack-test"
end
