# NAME: dclong/rust-utils
FROM dclong/rust
# GIT: https://github.com/legendu-net/docker-rust.git

RUN RUSTFLAGS="-C strip=symbols" cargo install --locked \
    cargo-criterion \
    zellij \
    ripgrep rm-improved bat du-dust git-delta \
    stork-search

# evcxr_jupyter
#RUN cargo install --git https://github.com/google/evcxr.git --branch main evcxr_jupyter \
#    && evcxr_jupyter --install
RUN cargo install evcxr_jupyter \
    && evcxr_jupyter --install
