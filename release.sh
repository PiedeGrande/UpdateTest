#!/bin/bash
PROJECT_NAME=UpdateTest
PROJECT_DIR=$(pwd)/$PROJECT_NAME
INFOPLIST_FILE="Info.plist"

CFBundleVersion=$(/usr/libexec/PlistBuddy -c "Print CFBundleVersion" "${PROJECT_DIR}/$PROJECT_NAME/${INFOPLIST_FILE}")
CFBundleShortVersionString=$(/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" "${PROJECT_DIR}/$PROJECT_NAME/${INFOPLIST_FILE}")

zip -r "Product/$PROJECT_NAME.v${CFBundleShortVersionString}.b${CFBundleVersion}.zip" Product/$PROJECT_NAME.app