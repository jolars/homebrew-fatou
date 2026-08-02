# homebrew-fatou

A [Homebrew](https://brew.sh) tap for [fatou](https://github.com/jolars/fatou),
a language server, formatter, and linter for Julia.

## Install

```sh
brew install jolars/fatou/fatou
```

Or tap first, then install:

```sh
brew tap jolars/fatou
brew install fatou
```

This installs a prebuilt `fatou` binary along with its man pages and shell
completions (bash, fish, zsh).

## How it stays current

The formula is regenerated automatically from the latest stable
[fatou release](https://github.com/jolars/fatou/releases). A scheduled workflow
(`.github/workflows/update-formula.yml`) checks daily and commits an updated
`Formula/fatou.rb` when a new version ships; it can also be run on demand from
the Actions tab. No credentials are stored: the workflow reads the public
release assets and commits to this repo with the built-in `GITHUB_TOKEN`.

To regenerate the formula locally:

```sh
scripts/render-formula.sh   # requires an authenticated gh CLI
```
