# rust-musl-cross
Cross compiler for aarch64-unknown-linux-musl

## Setup
```
./build.sh
```

## Usage
```
rust-musl-builder cargo build --release
rust-musl-builder musl-strip target/aarch64-unknown-linux-musl/release/<bin-name>
```
