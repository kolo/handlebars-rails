# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'handlebars-rails/version'

Gem::Specification.new do |s|
  s.name = 'handlebars-rails'
  s.version = HandlebarsRails::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['Dmitry Maksimov']
  s.email = ['dmtmax@gmail.com']
  s.homepage = 'https://github.com/kolo/handlebars-rails'
  s.summary = 'Handlebars for Rails 3.1'

  s.add_development_dependency 'rails', ['~> 3.1.0.rc5']

  s.files = %w(README.md) + Dir['lib/**/*', 'vendor/**/*']

  s.require_path = ['lib']
end
