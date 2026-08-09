# ⚠️ This project has been renamed and moved

## → [github.com/aviral2552/scrubmac](https://github.com/aviral2552/scrubmac)

**cleanmymac** (2018–2026) is now **scrubmac** as of v3.0.0 — renamed to end
the collision and confusion with MacPaw's unrelated commercial products of
the same name, including their official `cleanmymac-cli`, which claims the
`bin/cleanmymac` name in Homebrew.

This repository is an archived tombstone: it preserves the full pre-rename
history and the final 2.x releases so existing installs keep working, but it
receives **no updates**. All development, issues, and releases live at the
new home.

## Migrate

**Homebrew users** — the formula rename is automatic:

```bash
brew update && brew upgrade
```

**Git installs** — re-run the installer from the new repo (your config,
disabled list, and custom cleaners migrate automatically):

```bash
git clone https://github.com/aviral2552/scrubmac.git && cd scrubmac && ./install.sh
```

**Crontabs and aliases** — update `cleanmymac` to `scrubmac`. A transitional
shim keeps old paths working through v3, and is removed in v4.

## Note for old clones

`cleanmymac update` in a pre-rename clone now reports that the project has
moved instead of pulling — this repository is frozen. If your clone's remote
still points here, you are on the final 2.x forever; migrate with the two
lines above.

## License

The 2.x releases in this repository are [GPL-3.0-only](LICENSE); see
[NOTICE](NOTICE). The project continues at
[scrubmac](https://github.com/aviral2552/scrubmac) under GPL-3.0-only with an
attribution term (GPLv3 §7(b)).
