# NAME: dclong/rust-utils
FROM dclong/rust
# GIT: https://github.com/legendu-net/docker-rust.git

RUN rustup component add rust-src rustfmt clippy
RUN RUSTFLAGS="-C strip=symbols" cargo install --locked \
    cargo-cache cargo-edit cargo-criterion cargo-binstall sccache \
    zellij \
    ripgrep rm-improved bat du-dust \
    git-delta git-leave \
    stork-search

# evcxr_jupyter
#RUN cargo install --git https://github.com/google/evcxr.git --branch main evcxr_jupyter \
#    && evcxr_jupyter --install
RUN cargo install evcxr_jupyter \
    && evcxr_jupyter --install
