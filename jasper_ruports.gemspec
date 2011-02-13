# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib",__FILE__)
require "jasper_ruports/version"

Gem::Specification.new do |s|
  s.name        = "jasper_ruports"
  s.version     = JasperRuports::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Paul Carey"]
  s.email       = ["paulccarey@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/jasper_ruports"
  s.summary     = "Jasper Reports with Ruby Goodness"
  s.description = "Allows the use of jasper reports with Ruby goodness"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "jasper_ruports"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rspec"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
