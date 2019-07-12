#!/bin/sh

sh -c "npm run test $* --ci --testLocationInResults --json --outputFile=report.json" &> /dev/null
set -e
sh -c "cat report.json | /usr/bin/jest-action"
