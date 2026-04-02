# Skip jekyll-minifier outside production so local serve/build does not
# rewrite every file through the minifier's custom write path.

unless ENV["JEKYLL_ENV"] == "production"
  module Jekyll
    class PluginManager
      unless instance_methods.include?(:require_gems_without_dev_minifier_filter)
        alias_method :require_gems_without_dev_minifier_filter, :require_gems

        def require_gems
          original_gems = site.gems
          filtered_gems = site.gems.reject { |plugin| plugin == "jekyll-minifier" }

          self.site.gems = filtered_gems
          require_gems_without_dev_minifier_filter
        ensure
          self.site.gems = original_gems
        end
      end
    end
  end
end
