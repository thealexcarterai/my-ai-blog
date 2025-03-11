source "https://rubygems.org"

# Specify the Jekyll version
gem "jekyll", "~> 4.4.1"

# Specify the Minima theme version
gem "minima", "~> 2.5"

# Required plugins
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-seo-tag", "~> 2.8"  # SEO tags
end

# Additional dependencies
gem "webrick", "~> 1.7"  # Required for Jekyll 4.0 and above
gem "i18n", "~> 1.14"    # Internationalization support
gem "kramdown", "~> 2.5" # Markdown parser
gem "kramdown-parser-gfm", "~> 1.1" # GitHub-Flavored Markdown (replaces jekyll-commonmark-ghpages)
gem "rouge", "~> 4.5"    # Syntax highlighting
gem "jekyll-sass-converter", "~> 3.1"  # Sass support
gem "jekyll-coffeescript", "~> 2.0"    # CoffeeScript support
gem "jekyll-gist", "~> 1.5"  # Gist embedding
gem "jekyll-paginate", "~> 1.1"  # Pagination support
gem "jekyll-relative-links", "~> 0.7"  # Relative links
gem "jekyll-optional-front-matter", "~> 0.3"  # Optional front matter
gem "jekyll-readme-index", "~> 0.3"  # README as index
gem "jekyll-default-layout", "~> 0.1"  # Default layout
gem "jekyll-titles-from-headings", "~> 0.5"  # Titles from headings

# Windows and JRuby-specific gems
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
  gem "wdm", "~> 0.1"  # Performance booster for Windows
end

# Lock `http_parser.rb` gem for JRuby
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]
