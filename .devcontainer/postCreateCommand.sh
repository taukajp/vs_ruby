#!/usr/bin/env bash

set -e

# cat <<EOF >> Gemfile
# group :development, :test do
#   gem "standard"
#   gem "solargraph"
#   gem "debug"
# end
# EOF
# bundle install
bundle add standard solargraph debug --group "development, test"
bundle lock --add-platform ruby
bundle lock --add-platform x86_64-linux

cat <<EOF >> .standard.yml
ruby_version: $RUBY_MAJOR
ignore:
  - 'vendor/**/*'
EOF
