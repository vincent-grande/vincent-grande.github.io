# Retry interrupted writes from jekyll-minifier in production builds.

if ENV["JEKYLL_ENV"] == "production"
  require "jekyll-minifier"

  module Jekyll
    module Compressor
      unless instance_methods.include?(:with_eintr_retry)
        def with_eintr_retry
          attempts = 0

          begin
            yield
          rescue Errno::EINTR, Errno::ECANCELED
            attempts += 1
            retry if attempts < 4
            raise
          end
        end
      end

      unless instance_methods.include?(:output_file_without_eintr_retry)
        alias_method :output_file_without_eintr_retry, :output_file

        def output_file(dest, content)
          with_eintr_retry do
            output_file_without_eintr_retry(dest, content)
          end
        end
      end
    end
  end

  module Jekyll
    class StaticFile
      unless instance_methods.include?(:copy_file_without_eintr_retry)
        alias_method :copy_file_without_eintr_retry, :copy_file

        def copy_file(path, dest_path)
          with_eintr_retry do
            copy_file_without_eintr_retry(path, dest_path)
          end
        end
      end
    end
  end
end
