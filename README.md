# Proceed

[![Build Status][travis-badge]][travis-link]
[![Slack Room][slack-badge]][slack-link]

A simple confirmation function utility

## Install

With [fisherman]

```
fisher markcial/proceed
```

## Usage

```fish
proceed -h
```

or if you want to skip all the bells and whistles

```fish
proceed -m "Who you gonna call?"
Who you gonna call? [Y/n]
```

But beware, if you are requesting a destructive action you might want to
use the -[d|destructive] parameter, this way if user just skips the command it breaks all the flow.

```fish
proceed -d
Do you want to continue?  [y/N]
# If you press intro it just returns with exit code
```


[travis-link]: https://travis-ci.org/markcial/proceed
[travis-badge]: https://img.shields.io/travis/markcial/proceed.svg
[slack-link]: https://fisherman-wharf.herokuapp.com
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg
[fisherman]: https://github.com/fisherman/fisherman
