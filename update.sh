#!/bin/bash
update() {
  echo Updating $1...
  cd olivsoft/$1
# git pull --quiet origin master
  git pull origin master
  cd ../..
}
#
update javanmeaparser
update coreutilities
update chartcomponents
update javanauticalalmanac
update fullnmeaconsole
update java-tide-engine
update tide-engine-implementation
update almanac-related-tools
update google-locator
update star-finder
update sailfax
update chart-library
update navigation-desktop
update polar-smoother
update navigation-desktop-user-exits
update geomutils
update weatherwizard
update ww-user-exits
update release
#
echo Code update completed
echo ---------------------
echo You can now run the build:
echo 'Prompt> cd olivsoft/release'
echo 'Prompt> ../../gradlew shadowJar'
echo After that, you can run the soft just like before.
#
