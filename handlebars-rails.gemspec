# -*- encoding: utf-8 -*-
$:.push('lib')
require 'handlebars-rails/version'

Gem::Specification.new do |s|
  s.name = 'handlebars-rails'
  s.version = HandlebarsRails::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['Dmitry Maksimov']
  s.email = ['dmtmax@gmail.com']
  s.homepage = 'https://github.com/kolo/handlebars-rails'
  s.summary = 'Handlebars for Rails 3.1+'

  s.required_ruby_version     = '>= 1.8.7'
  s.required_rubygems_version = '>= 1.3.6'

  s.add_dependency 'sprockets', ['> 2.0.3']

  s.files = %w(README.md) + Dir['lib/**/*', 'vendor/**/*']

  s.require_path = 'lib'
end
