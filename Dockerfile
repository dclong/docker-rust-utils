# NAME: dclong/rust-utils
FROM dclong/rust
# GIT: https://github.com/dclong/docker-rust.git

RUN RUSTFLAGS="-C target-cpu=native -C opt-level=z -C strip=true" cargo install ripgrep rm-improved bat du-dust zellij
