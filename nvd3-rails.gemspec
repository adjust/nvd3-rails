# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nvd3/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "nvd3-rails"
  s.version     = NVD3::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Manuel Knie"]
  s.email       = ["manuel@adeven.com"]
  s.homepage    = "http://adeven.com"
  s.summary     = "Use nvd3 with Rails 3"
  s.description = "This gem provides nvd3 for your Rails 3 application."

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "railties", ">= 3.2.0", "< 5.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = 'lib'
end
