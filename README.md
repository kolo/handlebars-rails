# handlebars-rails

Handlebars.js for Rails 3.1

## Getting started

Add the gem to your application Gemfile:

    gem 'handlebars-rails', :git => 'git://github.com/kolo/handlebars-rails.git'

Run `bundle install` and add folowing lines to
`app/assets/javascripts/application.js`:

    //= require handlebars-rails
    //= require handlebars

Now you can create hadlebars template files by putting each template in
dedicated '.js.hjs' file (e.g.
`app/assets/javascripts/templates/some_template.js.hjs`)

Bundle together all templates by using Sprockets. Create, for example,
`app/assets/javascripts/templates/templates.js' and add into it the
following line:

    //= require_tree .

Now you can add this file in `application.js` or load it in the layout.

In Javascript templates are available through TEMPLATES variable. If you
have file `app/assets/Javascripts/templates/posts/index.js.hjs` it will
be available as TEMPLATES.templates_posts_index function.

## Credits

This gem was insired by [sproutcore-rails](https://github.com/kiskolabs/sproutcore-rails) and I used code from that gem.

