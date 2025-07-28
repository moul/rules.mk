# rules.mk

:warning: **This project is no longer maintained** :warning:

[![CircleCI](https://circleci.com/gh/moul/rules.mk.svg?style=shield)](https://circleci.com/gh/moul/rules.mk)
[![License](https://img.shields.io/github/license/moul/rules.mk.svg)](https://github.com/moul/rules.mk/blob/master/LICENSE)
[![GitHub release](https://img.shields.io/github/release/moul/rules.mk.svg)](https://github.com/moul/rules.mk/releases)
[![CodeFactor](https://www.codefactor.io/repository/github/moul/rules.mk/badge)](https://www.codefactor.io/repository/github/moul/rules.mk)
[![Made by Manfred Touron](https://img.shields.io/badge/made%20by-Manfred%20Touron-blue.svg?style=flat)](https://manfred.life/)

## Project Status

After years of using and maintaining this project, I've come to realize that this approach adds more complexity than value. While the idea of having a shared Makefile library seemed appealing initially, in practice it:

- Makes debugging harder when things go wrong
- Adds an extra layer of abstraction that obscures what's actually happening
- Creates a dependency that needs to be maintained and updated
- Can break existing projects when updated

**I now recommend using smaller, focused tools that can be called from Makefiles instead of relying on Makefile libraries.** This approach is more modular, easier to understand, and provides better error messages.

The project will remain available for those who find it useful, but I won't be adding new features or fixing bugs.

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

1. Run `make bumpdeps`
2. Profit

### Examples

See the [`./test` directory](./test)

*`make help` at the root of this repo*

[embedmd]:# (.tmp/root-help.txt)
```txt
General commands:
  bumpdeps
  generate
  test
```

*`make help` in test/docker*

[embedmd]:# (.tmp/test-docker.txt)
```txt
General commands:
  build
  test
```

*`make help` in test/go-binary*

[embedmd]:# (.tmp/test-go-binary.txt)
```txt
General commands:
  build
  bumpdeps
  fmt
  generate
  install
  lint
  release
  test
  tidy
  unittest
  verify
```

*`make help` in test/go-binary-and-docker*

[embedmd]:# (.tmp/test-go-binary-and-docker.txt)
```txt
General commands:
  build
  bumpdeps
  fmt
  generate
  install
  lint
  release
  test
  tidy
  unittest
  verify
```

*`make help` in test/go-library*

[embedmd]:# (.tmp/test-go-library.txt)
```txt
General commands:
  build
  bumpdeps
  fmt
  generate
  lint
  test
  tidy
  unittest
  verify
```


## License

© 2019-2020 [Manfred Touron](https://manfred.life) -
[Apache-2.0 License](https://github.com/moul/rules.mk/blob/master/LICENSE)
