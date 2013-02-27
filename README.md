# handlebars-rails

Handlebars.js for Rails 3.2. Handlebars version is 1.0.0-rc.3.

## Getting started

Add the gem to your application Gemfile:

    gem 'handlebars-rails', :git => 'git://github.com/kolo/handlebars-rails.git'

Run `bundle install` and add folowing lines to
`app/assets/javascripts/application.js`:

    //= require handlebars

Now you can create hadlebars template files by putting each template in
dedicated '.jst.hjs' file (e.g.
`app/assets/javascripts/templates/some_template.jst.hjs`)

Now you can add this file in `application.js` or load it in the layout.

In Javascript code templates are available through JST variable. If you
have file `app/assets/javascripts/templates/posts/index.jst.hjs` it will
be available as `JST["templates/posts/index"]` function.

## Credits

This gem was insired by [sproutcore-rails](https://github.com/kiskolabs/sproutcore-rails) and I used code from that gem.

