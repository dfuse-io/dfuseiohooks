#!/usr/bin/env bash

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

BROWN='\033[0;33m'
NC='\033[0m'

BUILD_SUFFIX=${1}
CORES=`getconf _NPROCESSORS_ONLN`

printf "${BROWN}Building dfuseiohooks ABI${NC}\n"

mkdir -p $ROOT/build

eosio-cpp \
    -O3 \
    -I${ROOT}/include \
    -R${ROOT}/resources \
    -abigen -abigen_output="${ROOT}/build/dfuseiohooks.abi" \
    -contract dfuseiohooks \
    -o "${ROOT}/build/dfuseiohooks.wasm" \
    src/dfuseiohooks.cpp
