# jsTree-Rails

Makes including jsTree in Rails 4 projects a breeze.

## Installation

Add the following line to your Gemfile:

    gem 'jstree-rails', :git => 'git://github.com/tristanm/jstree-rails.git'

then run `bundle install` and restart your app.

## Usage

jsTree needs to be included after jQuery in your javascript manifest:

    //= require jquery
    //= require jquery_ujs
    //= require jstree # add this line to app/assets/javascripts/application.js
    //= require_tree .
    
The jsTree stylesheet also needs to be loaded in your application stylesheet

    *= require jstree  # add this line to app/assets/stylesheets.css
    *= require_self


### Themes

Use themes the way you normally would but DON'T specify a URL:

    // CoffeeScript
    
    jQuery ->
        $('.tree').jstree
            core: 
                themes:
                    name: 'default-dark'
                    
You must also adjust the stylesheet by changing your application.css/application.scss file:

    *= require jstree-theme-default-dark  # Need to change the stylesheet to match the theme
    *= require_self
                   

## Issues / Contributions

This is the first Gem I've released and I'm a sponge for soaking up constructive feedback. Please raise any [issues](https://github.com/tristanm/jstree-rails/issues) you find or fork it and send me a pull request.
