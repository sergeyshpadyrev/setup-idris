# setup-idris

![Test](https://github.com/sergeyshpadyrev/setup-idris-builds/actions/workflows/testAction.yml/badge.svg)

This action sets up a working environment for [Idris](https://www.idris-lang.org/) programming language. <br/>
It's based on Idris2, the old version of the language is not supported.

## Usage
```yaml
on: [push]
name: build
jobs:
  runidris:
    name: Run Idris
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v3
      - name: Setup Idris
        uses: sergeyshpadyrev/setup-idris@v1.2
      - name: Compile program
        run: idris main.idr -o main
      - name: Run program
        run: ./build/exec/main
```
