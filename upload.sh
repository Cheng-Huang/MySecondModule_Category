#!/bin/bash

VersionString=`grep -E 's.version.*=' MySecondModule_Category.podspec`
VersionNumber=`tr -cd 0-9 <<<"$VersionString"`

NewVersionNumber=$(($VersionNumber + 1))
LineNumber=`grep -nE 's.version.*=' MySecondModule_Category.podspec | cut -d : -f1`
sed -i "" "${LineNumber}s/${VersionNumber}/${NewVersionNumber}/g" MySecondModule_Category.podspec

echo "current version is ${VersionNumber}, new version is ${NewVersionNumber}"

git add .
git commit -am ${NewVersionNumber}
git tag ${NewVersionNumber}
git push origin master --tags
pod repo push MyRepo MySecondModule_Category.podspec --verbose --allow-warnings --use-libraries --use-modular-headers

