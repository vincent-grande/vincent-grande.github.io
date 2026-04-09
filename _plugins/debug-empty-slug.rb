# Temporary debugging helper for empty slug warnings.

module Jekyll
  module Utils
    class << self
      unless method_defined?(:slugify_without_empty_debug)
        alias_method :slugify_without_empty_debug, :slugify

        def slugify(string, mode: nil, cased: false)
          if string == ""
            warn "[debug-empty-slug] empty string passed to slugify"
            warn caller.take(12).join("\n")
          end

          slugify_without_empty_debug(string, mode: mode, cased: cased)
        end
      end
    end
  end
end
