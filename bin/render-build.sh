#!/usr/bin/env bash
# ecit on error
set -o errexit
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate