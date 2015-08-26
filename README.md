** NO LONGER IN DEVELOPMENT **

I recommend installing jsTree from rails-assets.org instead.

# jsTree-Rails

Makes including jsTree in Rails 3.1 projects a breeze.

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

## Issues / Contributions

This is the first Gem I've released and I'm a sponge for soaking up constructive feedback. Please raise any [issues](https://github.com/tristanm/jstree-rails/issues) you find or fork it and send me a pull request.

## To Do

* Work on loading themes through application.css and stop jsTree from making an additional request.
