## dfuseiohooks Smart Contract

The is an empty contract simply to leverage `eosio.cdt` to generate the
ABI for use.

The include & source file are present for the sole purpose of generating
the ABI through the normal `eosio.cdt` tool.

To build:

    ./build.sh

This will generate the `build/dfuseiohooks.abi` file that can be installed
on the `dfuseiohooks` account of the various supported chains.
