#!/bin/bash

set -e

VERSION=`cat version/number`

pushd quotes
  ./gradlew -PversionNumber=$VERSION clean assemble
popd

cp quotes/build/libs/quotes-$VERSION.jar build/.
