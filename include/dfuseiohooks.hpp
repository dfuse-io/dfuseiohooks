// Copyright 2020 dfuse Platform Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#pragma once

#include <string>

#include <eosio/eosio.hpp>

using eosio::datastream;
using eosio::name;
using std::string;

class [[eosio::contract("dfuseiohooks")]] dfuseiohooks : public eosio::contract
{
public:
    dfuseiohooks(name receiver, name code, datastream<const char *> ds)
        : eosio::contract(receiver, code, ds)
    {
    }

    [[eosio::action]] void event(const string &auth_key, const string &data);
};
