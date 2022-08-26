FROM ubuntu:latest

ENV IDRIS2_CG=chez
ENV SCHEME=scheme

WORKDIR /idris2-compiler/

RUN apt-get -qq update
RUN apt-get -y install build-essential git clang chezscheme
RUN git clone https://github.com/idris-lang/Idris2.git

WORKDIR /idris2-compiler/Idris2

RUN git checkout v0.5.1
RUN chmod -R a-w bootstrap
RUN export PATH="${PATH}:/root/.idris2/bin" && make bootstrap & make install

RUN ls -a 
RUN ls .idris2
