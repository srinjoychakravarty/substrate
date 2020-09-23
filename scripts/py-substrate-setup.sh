#!/bin/bash

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

chmod +x Miniconda3-latest-Linux-x86_64.sh

./Miniconda3-latest-Linux-x86_64.sh

cd miniconda3/

cd bin

source activate

python3 -m pip install py-substrate-api

python3 -c ' import asyncio; \ 
from substrateinterface import SubstrateInterface, SubstrateRequestException, Keypair; \
substrate = SubstrateInterface(url = "ws://127.0.0.1:9944", address_type = 42, type_registry_preset = 'kusama') \
genesis_hash = substrate.get_chain_head() \
print(f"Genesis Hash: {genesis_hash}") \
block_hash = "0x86d04ebc434cfcd09347ad5c5f5c0f6937b3d56d83c8e7def0b0876340d8d2f9" \
sample_block = substrate.get_runtime_block(block_hash = block_hash) \
print(f"Sample Block: {sample_block}") ' 