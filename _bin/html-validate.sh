#!/usr/bin/env bash
set -e # halt script on error

bundle exec jekyll build
#bundle exec htmlproofer ./_site --url-swap "/images:/../images/" --disable-external --alt-ignore '/.*/' 