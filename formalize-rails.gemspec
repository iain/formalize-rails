# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "formalize/rails/version"

Gem::Specification.new do |s|
  s.name        = "formalize-rails"
  s.version     = Formalize::Rails::VERSION
  s.authors     = ["Iain Hecker"]
  s.email       = ["iain@iain.nl"]
  s.homepage    = "https://github.com/iain/formalize-rails"
  s.summary     = %q{Use Formalize with the asset pipeline}
  s.description = %q{This gem provides the assets for the formalize form styling, for easy usage with the Rails 3.1 asset pipeline.}

  s.rubyforge_project = "formalize-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "railties", "~> 3.1.0.rc1"
end
