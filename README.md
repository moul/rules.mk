# rules.mk

:smile: rules.mk

[![CircleCI](https://circleci.com/gh/moul/rules.mk.svg?style=shield)](https://circleci.com/gh/moul/rules.mk)
[![License](https://img.shields.io/github/license/moul/rules.mk.svg)](https://github.com/moul/rules.mk/blob/master/LICENSE)
[![GitHub release](https://img.shields.io/github/release/moul/rules.mk.svg)](https://github.com/moul/rules.mk/releases)
[![CodeFactor](https://www.codefactor.io/repository/github/moul/rules.mk/badge)](https://www.codefactor.io/repository/github/moul/rules.mk)
[![Made by Manfred Touron](https://img.shields.io/badge/made%20by-Manfred%20Touron-blue.svg?style=flat)](https://manfred.life/)

## Usage

### Install

1. Copy [`rules.mk`](./rules.mk) to your repo (`wget https://raw.githubusercontent.com/moul/rules.mk/master/rules.mk`)
2. Configure your project variables and import `rules.mk` from your Makefile
    ```makefile
    GOPKG =         moul.io/golang-repo-template  # optional
    GOBINS =        . ./cmd/secondary-app         # optional
    DOCKER_IMAGE =  moul/golang-repo-template     # optional
    NPM_PACKAGES =  .                             # optional

    include rules.mk                              # required
    ```
4. Profit

#### Minimal config

```makefile
include rules.mk
```

### Update

1. Run `make RULESMK=1 bumpdeps`
2. Profit

### Examples

See the [`./test` directory](./test)

## License

© 2019 [Manfred Touron](https://manfred.life) -
[Apache-2.0 License](https://github.com/moul/rules.mk/blob/master/LICENSE)
