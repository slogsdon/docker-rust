# docker-rust

Dockerfile for slogsdon/rust image: https://registry.hub.docker.com/u/slogsdon/rust

## Usage

Create a Dockerfile in your Rust application directory with the following content:

    FROM slogsdon/rust
          
    WORKDIR /src/app
    ADD . /src/app
    RUN rustc exe main.rs
                          
    CMD []
    ENTRYPOINT ["/src/app/main"]

Run the following command in your application directory:

    docker build -t my/app .
