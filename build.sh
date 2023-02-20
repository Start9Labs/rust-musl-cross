#!/bin/bash
set -e

echo 'Building Container'
docker build . -t start9/rust-musl-cross:aarch64-musl
cat << 'EOF' | sudo tee /usr/local/bin/rust-aarch64-musl-builder
#!/bin/bash
docker run --rm -it -v "$HOME/.cargo/registry":/root/.cargo/registry -v $(pwd):/home/rust/src start9/rust-musl-cross:aarch64-musl $@
EOF
sudo chmod +x /usr/local/bin/rust-aarch64-musl-builder
