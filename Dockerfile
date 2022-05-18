# NAME: dclong/rust-utils
FROM dclong/rust
# GIT: https://github.com/legendu-net/docker-rust.git

RUN RUSTFLAGS="-C strip=symbols" cargo install ripgrep rm-improved bat du-dust zellij
