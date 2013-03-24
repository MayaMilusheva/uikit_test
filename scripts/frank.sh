#!/bin/bash

bundle install
echo 'n' > tmp.txt
echo '1' >> tmp.txt
cat tmp.txt | bundle exec frank setup
bundle exec frank build
bundle exec cucumber Frank
FRANK_TEST_IPAD=true bundle exec cucumber Frank

