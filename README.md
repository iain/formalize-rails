# Formalize Rails

This gem vendors Formalize to the asset pipeline. Therefore, this gem requires Rails 3.1 and
greater.

Add this gem to your gemfile:

    gem 'formalize-rails'

And add `app/assets/stylesheets/application.css`:

    //= require formalize

And add one of these lines to `app/assets/javascripts/application.js`, depending on which javascript
framework you are using:

    //= dojo.formalize
    //= extjs.formalize
    //= jquery.formalize
    //= mootools.formalize
    //= prototype.formalize
    //= yui.formalize

See [formalize.me](http://formalize.me) for more information.
