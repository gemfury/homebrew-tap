# Overview

This is the official Homebrew tap for Gemfury CLI and related
utilities.

# How to use

Add this tap to your brew installation:

```
brew tap gemfury/tap
```

Then install the Gemfury CLI from this tap:

```
brew install --cask fury-cli
```

If you installed the earlier `fury-cli` formula, `brew update` moves it to
the cask. Remove the old copy afterwards:

```
brew uninstall --formula fury-cli
```

The legacy Ruby CLI remains available as a formula, but cannot be
installed alongside the cask:

```
brew install gemfury
```

# Contribution and Improvements

Please fork the code, make the changes, and submit a pull request for
me to review your contributions.

## Feature requests

If you think it would be nice to have a particular feature that is
presently not implemented, we would love to hear that and consider
working on it.
Just open an issue in Github.

# Questions

Please open a Github Issue if you have any other questions or problems.
