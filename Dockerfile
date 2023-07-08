# NAME: dclong/rust-utils
FROM dclong/rust
# GIT: https://github.com/legendu-net/docker-rust.git

RUN rustup component add rust-src rustfmt clippy
RUN RUSTFLAGS="-C strip=symbols" cargo install --locked cargo-binstall \
    && cargo-binstall -y \
        cargo-cache cargo-edit cargo-criterion cargo-udeps sccache \
        zellij \
        ripgrep rm-improved bat du-dust \
        git-delta git-leave \
        stork-search

# evcxr_jupyter
RUN cargo install --git https://github.com/google/evcxr.git --branch main evcxr_jupyter \
    && evcxr_jupyter --install
#RUN cargo-binstall -y evcxr_jupyter \
#    && evcxr_jupyter --install

# not-perf
RUN mkdir -p /tmp/not-perf \
    && git clone https://github.com/koute/not-perf.git /tmp/not-perf \
    && cd /tmp/not-perf/cli \
    && cargo build --release \
    && cp ../target/release/nperf /usr/bin/

