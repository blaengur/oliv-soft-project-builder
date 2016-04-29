#!/bin/bash
checkout() {
  echo Checking out $1...
  git clone --quiet https://github.com/OlivierLD/$1/ ./olivsoft/$1
}
#
rm -rf olivsoft
mkdir olivsoft
#
checkout javanmeaparser
checkout coreutilities
checkout chartcomponents	
checkout javanauticalalmanac
checkout fullnmeaconsole
checkout java-tide-engine
checkout tide-engine-implementation
checkout almanac-related-tools
checkout google-locator
checkout star-finder
checkout sailfax
checkout chart-library
checkout navigation-desktop
checkout polar-smoother
checkout navigation-desktop-user-exits
checkout geomutils
checkout weatherwizard
checkout ww-user-exits
checkout release
#
echo Checkout completed
