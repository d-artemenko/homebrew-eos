# homebrew-eos

Homebrew tap for `eos`.

## Install

```bash
export HOMEBREW_GITHUB_API_TOKEN="$(gh auth token)"
brew tap d-artemenko/homebrew-eos
brew install --cask d-artemenko/homebrew-eos/eos
```

## Upgrade

```bash
export HOMEBREW_GITHUB_API_TOKEN="$(gh auth token)"
brew upgrade --cask d-artemenko/homebrew-eos/eos
```

The token must be able to read private releases from `d-artemenko/eos`.
