require 'non-stupid-digest-assets'

module Jstree
  module Rails
    class Engine < ::Rails::Engine
      config.assets.precompile << %r(jstree.*\.(png|gif))
      NonStupidDigestAssets.whitelist += [/jstree.*png/, /jstree.*gif/]
    end
  end
end
