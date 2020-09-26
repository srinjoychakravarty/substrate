sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt install curl -y
sudo apt install tilix -y
sudo update-alternatives --config x-terminal-emulator
2

curl https://getsubstrate.io -sSf | bash -s -- --fast

restart shell [optional]
source ~/.cargo/env

rustup update
cargo --version

rustup target add wasm32-unknown-unknown --toolchain nightly
OR
rustup target add wasm32-unknown-unknown --toolchain stable

rustup component add rust-src --toolchain nightly

rustup toolchain install nightly-2020-06-01 [works with flipper*]
OR
rustup toolchain install nightly-2020-07-12 [doesn't work with flipper]

rustup show

rustup default nightly-2020-07-12-x86_64-unknown-linux-gnu

rustup show

rustup target add wasm32-unknown-unknown --toolchain nightly-2020-06-01
OR
rustup target add wasm32-unknown-unknown --toolchain nightly-2020-07-12

curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.35.3/install.sh -o install_nvm.sh
bash install_nvm.sh
source ~/.profile
nvm ls-remote
nvm install 12.14.1
nvm alias default 12.14.1
nvm use default
node --version
npm --version

npm install @polkadot/api@1.22.0-beta.5
npm install @polkadot/api-contract@1.22.0-beta.5
npm list @polkadot/api

npm install async@3.2.0
npm list async

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install --no-install-recommends yarn
yarn --version

mkdir prometheum
cd prometheum/

git clone -b v2.0.0 --depth 1 https://github.com/substrate-developer-hub/substrate-node-template
cd substrate-node-template/

cargo +nightly-2020-07-12 build --release --verbose
OR
cargo +nightly-2020-07-12 install node-cli --git https://github.com/paritytech/substrate.git --tag v2.0.0-rc4 --force --locked

cargo install cargo-contract --vers 0.6.2 --force
OR
cargo install cargo-contract --vers 0.6.1

>> Compiling parity-scale-codec v1.3.5

cargo contract new flipper
cd flipper
cargo +nightly test

>> Compiling parity-scale-codec-derive v1.2.2

tilix -a session-add-down -x "./target/release/node-template --dev --tmp"
cd ..

git clone -b v2.0.0 --depth 1 https://github.com/substrate-developer-hub/substrate-front-end-template
cd substrate-front-end-template
yarn install
yarn start
