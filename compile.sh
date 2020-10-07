#!/usr/bin/env bash
# Copyright 2020 dfuse Platform Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


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
