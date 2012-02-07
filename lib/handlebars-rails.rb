require 'sprockets'
require 'sprockets/engines'
require 'handlebars-rails/hjs_template'

module HandlebarsRails
  class Engine < Rails::Engine
  end

 Sprockets.register_engine '.hjs', HjsTemplate
end
