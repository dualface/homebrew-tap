# homebrew-tap

Homebrew tap for [dualface](https://github.com/dualface)'s tools. The same
formulae work on macOS and Linux (Homebrew on Linux).

```sh
brew install dualface/tap/kander
brew install dualface/tap/ullage
```

Linux needs [Homebrew on Linux](https://docs.brew.sh/Homebrew-on-Linux)
first. `brew install ullage` and `brew upgrade ullage` install and start
the user-level daemon, pinning the current Cellar keg path.

## Formulae

| Formula | Upstream |
| --- | --- |
| `kander` | [dualface/kander](https://github.com/dualface/kander) — kanban orchestration for multiple AI agents |
| `ullage` | [dualface/ullage-cli](https://github.com/dualface/ullage-cli) — local daemon and CLI for subscription usage |

`Formula/kander.rb` and `Formula/ullage.rb` are regenerated automatically by
the release workflow in the upstream repository; do not hand-edit the
`version` and `sha256` fields.
