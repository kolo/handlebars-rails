require 'tilt/template'

module HandlebarsRails
  # = Sprockets engine for HandlebarsJS templates
  class HjsTemplate < Tilt::Template
    def self.default_mime_type
      'application/javascript'
    end

    def prepare
    end

    # Generates Javascript code from a HandlebarsJS template.
    def evaluate(scope, locals, &block)
      template = data.dup
      template.gsub!(/"/, '\\"')
      template.gsub!(/\r?\n/, '\\n')
      template.gsub!(/\t/, '\\t')
      "Handlebars.compile(\"#{template}\");\n"
    end
  end
end
