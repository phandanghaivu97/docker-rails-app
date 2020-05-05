#!/bin/bash

set -e

bundle install --path=vendor/bundle
bundle exec sidekiq

exec "$@"
