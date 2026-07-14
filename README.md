# QUILL Cast

Accessible, screen-reader-first podcasts as a standalone Windows app, from the QUILL project.

QUILL Cast is not a fork. The whole application lives in the [quill](https://github.com/Community-Access/quill) package (`quill.apps.podcasts`) and runs the exact same podcast feature code QUILL itself uses: the same Podcast Manager, pinned views, Inbox, Play Queue, download engine, and dialogs. This repository holds only what exists because QUILL is not in the picture: the product wrapper (entry point), the installer, and this app's own documentation. Everything shared stays upstream, so QUILL Cast tracks QUILL automatically.

## What it does

- Subscribe by search, feed URL, or OPML import; export your subscriptions any time.
- The full Podcast Manager: pinned Favorites / New Episodes / Continue Listening views, an Inbox that triages episodes into your own folders, and Search Everywhere across shows, episodes, notes, and fetched transcripts.
- A cross-show Play Queue that survives restarts, with keyboard-accessible reordering.
- Feed-provided transcripts (Podcasting 2.0), episode notes that timestamp the moment, chapters, sleep-timer-safe volume boost.
- Local podcasts: turn your own audio files into shows, with optional watched folders.
- Subscribe to ACB Media Podcasts in one command.
- Downloads with pause/resume all; Always Sync for shows you want complete.
- Live in the system tray; share settings, subscriptions, and downloads with QUILL and Quill Radio (one data store in `%APPDATA%\Quill`).
- Check for its own updates from Help > Check for Updates.

Deliberately not included: QUILL's editor, AI, speech transcription engines, braille, and speech-synthesis stacks. Feed-provided transcripts are plain downloads and work fully; nothing here generates transcripts from audio. Help > Open in Quill launches the full editor when you want it.

## Install

Download `QUILL-Cast-Setup-<version>.exe` from this repository's Releases page and run it. No Python required; the installer bundles the runtime. It installs to its own directory and never touches an existing QUILL install.

## Run from source

```powershell
pip install .
quill-cast
# or, with the quill package already installed:
python -m quill.apps.podcasts
```

## Build the installer

```powershell
# Requires a QUILL checkout that has produced its Windows portable bundle,
# and Inno Setup 6.3+ (ISCC.exe).
.\scripts\build_installer.ps1 -QuillRepo S:\QUILL
```

See `installer/quill-cast.iss` for exactly what ships; the payload excludes every on-demand and speech/braille component QUILL fetches at point of use.

## Documentation

- [User Guide](docs/userguide.md)
- [Release Notes](docs/release-notes-1.0.md)
- [Product Requirements](docs/prd.md)

## License

MIT, same as QUILL. See [LICENSE](LICENSE).
