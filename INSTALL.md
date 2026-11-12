# Local development

The Ruby version is pinned in `.ruby-version`. The Gemfile and Jekyll workflows
read that file, and `Gemfile.lock` records the dependency versions.

On an Apple Silicon Mac, install native Ruby with Homebrew and put it first on
your shell's PATH:

```sh
/opt/homebrew/bin/brew install ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
ruby --version
```

Check that Ruby matches `.ruby-version`. Add the PATH setting to `~/.zshrc` if
your shell does not already select native Homebrew Ruby. A Ruby version manager
can also use `.ruby-version` to select the pinned release.

Install the Bundler version listed under `BUNDLED WITH` in `Gemfile.lock`, then
install the site's gems into this checkout:

```sh
gem install bundler -v 4.0.1 --no-document
bundle config set --local path vendor/bundle
bundle install
bundle exec jekyll serve
```

Open the local URL printed by Jekyll. Stop the server with Ctrl-C.

To check the production build, including minification:

```sh
JEKYLL_ENV=production bundle exec jekyll build
```

ImageMagick generates responsive images. Install it with `brew install imagemagick`.
Jupyter with nbconvert is needed if you add notebook pages.

When upgrading Ruby, update `.ruby-version` and the Dockerfile base image
together. Run `bundle install`, test serving and the production build, and keep
the updated lockfile with the source changes.

## Template updates

The upstream release reviewed on 12 November 2026 is
[al-folio v1.2](https://github.com/alshedivat/al-folio/releases/tag/v1.2).
Starting with v1.0, upstream moved layouts and runtime code into plugin gems and
replaced Bootstrap/SCSS with Tailwind. This checkout keeps its customized
Bootstrap templates, so adopting v1.x requires a separate layout and
configuration migration.

For the Ruby upgrade, this site adopts upstream's explicit `observer` and
`ostruct` dependencies. It also declares `logger` for Jekyll and `benchmark` for
the custom plugin that loads ActiveSupport. The remaining dependency versions
are preserved where compatible with Ruby 4.
