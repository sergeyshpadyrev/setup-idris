# Github action for Idris setup 

This action sets up a working environment for [Idris](https://www.idris-lang.org/) programming language. <br/>
It's based on `idris2` version of the language. <br/>
The version `idris` is deprecated and not supported

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
        uses: sergeyshpadyrev/setup-idris@v1
      - name: Check Idris
        run: idris -v
```
