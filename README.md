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

Deliberately not included: QUILL's editor, AI, speech transcription engines, braille, and speech-synthesis stacks. Feed-provided transcripts are plain downloads and work fully; nothing here generates transcripts from audio.

## Install

Download `QUILL-Cast-Setup-<version>.exe` from this repository's Releases page and run it. Everything is bundled -- the app is a single PyInstaller executable, ffmpeg ships alongside it for audio processing, and the installer performs no downloads. It installs to its own directory and never touches an existing QUILL install.

## Run from source

```powershell
pip install .
quill-cast
# or, with the quill package already installed:
python -m quill.apps.podcasts
# or, for quick dev testing against a local QUILL checkout:
.\run-quill-cast.bat
```

## Build

```powershell
# One-file exe (needs an environment with the quill package + pyinstaller):
.\scripts\build_exe.ps1

# Installer (builds the exe first; needs Inno Setup 6.3+ and an ffmpeg.exe
# to bundle -- everything ships in the installer, nothing is downloaded):
.\scripts\build_installer.ps1 -FfmpegDir C:\path\to\ffmpeg\bin
```

The PyInstaller spec pulls the entire `quill` package -- code and data -- into the exe, and excludes only the stacks Cast never touches (speech transcription and neural TTS engines; feed-provided transcripts are plain downloads and work fully).

## Documentation

- [User Guide](docs/userguide.md)
- [Release Notes](docs/release-notes-1.0.md)
- [Product Requirements](docs/prd.md)

## License

MIT, same as QUILL. See [LICENSE](LICENSE).
