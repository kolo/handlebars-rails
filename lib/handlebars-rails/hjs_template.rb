require 'tilt/template'

module HandlebarsRails
  # = Sprockets engine for HandlebarsJS templates
  class HjsTemplate < Tilt::Template
    def self.default_mime_type
      'application/javascript'
    end

    def initialize_engine
    end

    def prepare
    end

    # Generates Javascript code from a HandlebarsJS template.
    # The template name is derived from the lowercase logical asset path
    # by replacing non-alphanum characheters by underscores.
    def evaluate(scope, locals, &block)
      template = data.dup
      template.gsub!(/"/, '\\"')
      template.gsub!(/\r?\n/, '\\n')
      template.gsub!(/\t/, '\\t')
      debugger
      "TEMPLATES[\"#{scope.logical_path.downcase.gsub(/[^a-z0-9]/, '_')}\"] = Handlebars.compile(\"#{template}\");\n"
    end
  end
end
