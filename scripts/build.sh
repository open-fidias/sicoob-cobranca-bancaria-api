#!/usr/bin/env bash

set -o nounset
set -o errexit
set -o pipefail

# mv openapi.json{,~}
rm -Rf tmp-build
mkdir tmp-build

npx openapi-generator generate \
    --input-spec openapi.json \
    --generator-name java \
    --group-id br.com.fidias \
    --artifact-id sicoob-cobranca-bancaria-api \
    --output tmp-build \
    --api-package br.com.fidias.sicoob_cobranca.api \
    --model-package br.com.fidias.sicoob_cobranca.model \
    --config api-config.json \
    --artifact-version 1.0.0 \
    --skip-validate-spec \
    --minimal-update

cp tmp-build/README.md README.md
cp tmp-build/docs/*.md docs
cp -r tmp-build/src/** src

# git apply ApiClient.java.patch
