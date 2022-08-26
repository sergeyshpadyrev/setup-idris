FROM ubuntu:latest

WORKDIR /idris2-compiler/

RUN apt-get update && apt-get -y install build-essential git clang chezscheme
RUN git clone https://github.com/idris-lang/Idris2.git

WORKDIR /idris2-compiler/Idris2

RUN make bootstrap && make install
RUN export PATH="${PATH}:/root/.idris2/bin"

RUN echo 'export PATH="/root/.idris2/bin/:${PATH}"' >> "${HOME}/.bashrc" 
RUN echo 'alias idris=idris2' >> "${HOME}/.bashrc"
