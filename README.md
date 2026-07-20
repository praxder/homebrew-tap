# praxder/homebrew-tap

Homebrew tap for [universal-remote](https://github.com/praxder/universal-remote),
a local, terminal-based universal TV remote.

## Install

```sh
brew install praxder/tap/universal-remote
```

macOS on Apple Silicon (arm64) only.

## Maintenance

`Formula/universal-remote.rb` is updated automatically by the release pipeline in
the [universal-remote](https://github.com/praxder/universal-remote) repo — the
`tap` job rewrites the formula's `version` and `sha256` on each release. Manual
edits are normally unnecessary.
