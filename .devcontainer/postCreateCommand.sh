#!/usr/bin/env bash

set -e

test -s Gemfile.lock && exit 0

# cat <<EOF >> Gemfile
# group :development, :test do
#   gem "debug", require: false
#   gem "rubocop", require: false
#   gem "yard", require: false
# end
# EOF
# bundle install
bundle add debug rubocop yard --require false --group "development, test"
bundle lock --add-platform ruby
bundle lock --add-platform x86_64-linux

exit 0
