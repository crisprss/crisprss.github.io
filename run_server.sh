#!/usr/bin/env bash

set -euo pipefail

homebrew_bundle="/opt/homebrew/opt/ruby@3.2/bin/bundle"

if [[ -x "$homebrew_bundle" ]]; then
  "$homebrew_bundle" _2.3.26_ exec jekyll serve --livereload --livereload-port 35730
else
  bundle exec jekyll serve --livereload --livereload-port 35730
fi
