#!/bin/sh

set -e

TEXTUAL_PRODUCT_LOCATION="${CODESIGNING_FOLDER_PATH}"
TEXTUAL_PRODUCT_BINARY="${TEXTUAL_PRODUCT_LOCATION}/Contents/MacOS/${EXECUTABLE_NAME}"
TEXTUAL_PROJECT_DIR="${PROJECT_DIR}"

# Historic Log File Manager
cd "${PROJECT_DIR}/XPC Services/Historic Log File Manager/"

xcodebuild -target "Historic Log File Manager" \
 -configuration "${TEXTUAL_XPC_SERVICE_BUILD_SCHEME}" \
 CODE_SIGN_IDENTITY="${CODE_SIGN_IDENTITY}" \
 DEVELOPMENT_TEAM="${DEVELOPMENT_TEAM}" \
 PROVISIONING_PROFILE_SPECIFIER="" \
 TEXTUAL_PRODUCT_LOCATION="${TEXTUAL_PRODUCT_LOCATION}" \
 TEXTUAL_PRODUCT_BINARY="${TEXTUAL_PRODUCT_BINARY}" \
 TEXTUAL_PROJECT_DIR="${TEXTUAL_PROJECT_DIR}"

cd "${PROJECT_DIR}/XPC Services/Inline Content Loader/"

xcodebuild -target "Inline Content Loader" \
 -configuration "${TEXTUAL_XPC_SERVICE_BUILD_SCHEME}" \
 CODE_SIGN_IDENTITY="${CODE_SIGN_IDENTITY}" \
 DEVELOPMENT_TEAM="${DEVELOPMENT_TEAM}" \
 PROVISIONING_PROFILE_SPECIFIER="" \
 TEXTUAL_PRODUCT_LOCATION="${TEXTUAL_PRODUCT_LOCATION}" \
 TEXTUAL_PRODUCT_BINARY="${TEXTUAL_PRODUCT_BINARY}" \
 TEXTUAL_PROJECT_DIR="${TEXTUAL_PROJECT_DIR}"

cd "${PROJECT_DIR}/XPC Services/IRC Remote Connection Manager/"

xcodebuild -target "IRC Remote Connection Manager" \
 -configuration "${TEXTUAL_XPC_SERVICE_BUILD_SCHEME}" \
 CODE_SIGN_IDENTITY="${CODE_SIGN_IDENTITY}" \
 DEVELOPMENT_TEAM="${DEVELOPMENT_TEAM}" \
 PROVISIONING_PROFILE_SPECIFIER="" \
 TEXTUAL_PRODUCT_LOCATION="${TEXTUAL_PRODUCT_LOCATION}" \
 TEXTUAL_PRODUCT_BINARY="${TEXTUAL_PRODUCT_BINARY}" \
 TEXTUAL_PROJECT_DIR="${TEXTUAL_PROJECT_DIR}"
