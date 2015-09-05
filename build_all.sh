#!/usr/bin/env sh
set -e
cd caja_de_ahorro
bundle install
bundle exec rake
cd ..
cd chopper
bundle install
bundle exec rake

