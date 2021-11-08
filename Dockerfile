# NAME: dclong/rust-utils
FROM dclong/rust
# GIT: https://github.com/dclong/docker-rust.git

#RUSTFLAGS="-C target-cpu=native -C opt-level=z"
RUN cargo install ripgrep rm-improved bat du-dust zellij
