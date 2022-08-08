# NAME: dclong/rust-utils
FROM dclong/rust
# GIT: https://github.com/legendu-net/docker-rust.git

RUN RUSTFLAGS="-C strip=symbols" cargo install ripgrep rm-improved bat du-dust zellij git-delta

# evcxr_jupyter
RUN cargo install --git https://github.com/google/evcxr.git --branch main evcxr_jupyter \
    && evcxr_jupyter --install
#RUN cargo install evcxr_jupyter \
#    && evcxr_jupyter --install
