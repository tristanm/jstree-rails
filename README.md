# jsTree-Rails

This gem packages the jsTree plugin for easy use with the Rails 3.1+ asset pipleine.

## Installation

Add the following line to your Gemfile:

    gem 'jstree-rails', :git => 'git://github.com/xinlangzi/jstree-rails.git'

then run `bundle install` and restart your app.

## Usage

jsTree needs to be included after jQuery in your javascript manifest:

    //= require jquery
    //= require jquery_ujs
    //= require jstree # add this line to app/assets/javascripts/application.js
    //= require_tree .


Add the stylesheets to application.css:

    *= require jstree-themes/default/style

### Themes

Ideally, all your stylesheets should be concatenated and loaded in as few requests as possible. However, jsTree prefers to use its [themes plugin](http://www.jstree.com/documentation/themes) to load a theme's stylesheet. I'm hoping to address this inadequacy at some point but, in the mean time, the theme folder has been preset to the correct path using `$.jstree._themes = '/assets/jstree-themes/';`.

Use themes the way you normally would but DON'T specify a URL:

    // CoffeeScript

    jQuery ->
        $('.tree').jstree
            plugins:
                ['themes']
            themes:
                theme: 'apple'
