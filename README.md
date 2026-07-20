# praxder/homebrew-tap

My personal [Homebrew](https://brew.sh) tap — where I distribute my projects as
`brew install`-able formulae. It currently houses a single formula
(`universal-remote`); more will likely be added over time.

```sh
brew tap praxder/tap
```

## Formulae

### universal-remote

A local, terminal-based universal TV remote.

```sh
brew install praxder/tap/universal-remote
```

macOS on Apple Silicon (arm64) only.

## Maintenance

Each formula is updated automatically by its source project's release pipeline,
so manual edits are normally unnecessary. For example,
`Formula/universal-remote.rb` is rewritten (new `version` + `sha256`) by the
[universal-remote](https://github.com/praxder/universal-remote) repo's release
workflow on every release.
