#!/bin/bash

set -e

VERSION=`cat quotes-version/number`

pushd quotes-service
  ./gradlew -PversionNumber=$VERSION clean assemble
popd

cp quotes-service/build/libs/quotes-$VERSION.jar build/.
