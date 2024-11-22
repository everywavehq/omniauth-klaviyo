# frozen_string_literal: true

require_relative "lib/omniauth/klaviyo/version"

Gem::Specification.new do |spec|
  spec.name = "omniauth-klaviyo"
  spec.version = Omniauth::Klaviyo::VERSION
  spec.authors = ["Morad Boukhari"]
  spec.email = ["morad@everywave.com"]

  spec.summary = "OmniAuth strategy for Klaviyo"
  spec.description = "OmniAuth strategy for Klaviyo"
  spec.homepage = "https://github.com/everywavehq/omniauth-klaviyo"
  spec.license = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 3.0.0"

  spec.add_dependency "omniauth-oauth2", "~> 1.5"
end
