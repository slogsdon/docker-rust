FROM ubuntu:14.04
MAINTAINER Shane Logsdon <shane@shanelogsdon.com>

RUN apt-get update
RUN sudo apt-get install -y build-essential

RUN curl -O http://static.rust-lang.org/dist/rust-0.10.tar.gz
RUN tar -xzf rust-0.10.tar.gz
RUN cd rust-0.10
RUN ./configure
RUN make && sudo make install
RUN rm rust-0.10.tar.gz
