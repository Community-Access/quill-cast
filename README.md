# QUILL Cast

QUILL Cast's source code, build tooling, and documentation now live in the
**QUILL monorepo**: [`Community-Access/quill`](https://github.com/Community-Access/quill)
— the app itself is `quill.apps.podcasts`, and its standalone packaging
(launcher, PyInstaller spec, installer, build script, docs) is under
[`standalone/cast/`](https://github.com/Community-Access/quill/tree/main/standalone/cast).

This repository is retained as the **release host** for QUILL Cast. It exists so that:

- **Automatic updates keep working** — the in-app "Check for Updates" reads this
  repo's [Releases](../../releases), and every shipped copy of QUILL Cast polls
  it. This repo must not be deleted.
- **Bug reports have a home** — "Report a Bug" files issues here.

It intentionally contains **no source or build tooling** — those moved to the
monorepo so the packaging can never drift from the code it packages. To build or
release QUILL Cast, use `standalone/cast/` in `Community-Access/quill`.

Prior contents remain in this repo's git history.
