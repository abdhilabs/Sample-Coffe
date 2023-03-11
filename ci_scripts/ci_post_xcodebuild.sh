#!/bin/sh

#  ci_post_xcodebuild.sh
#  Coffee
#
#  Created by Abdhi P on 11/03/23.
#  

if [ "$CI_WORKFLOW" = "Firebase Debug Build" ];
then
    echo "Uploading Firebase Debug Build"
    unzip firebase-tools-macos.zip

    chmod +x ./firebase-tools-macos

    ./firebase-tools-macos appdistribution:distribute $CI_AD_HOC_SIGNED_APP_PATH/CoffeeAbdhilabs0123.ipa --app 1:56209729540:ios:9af5fb43985ac9ebaced51 --token "$FIREBASE_TOKEN" --groups "Dev"
fi
