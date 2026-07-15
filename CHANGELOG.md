# Changelog

All notable changes to QUILL Cast are documented here. See `docs/release-notes-1.0.md` for the fuller narrative version.

## Unreleased

- Sound Enhancements (Episode > Sound Enhancements...): an equalizer preset (Flat/Bass Boost/Voice Clarity/Podcast), a compressor ("Even Out Volume"), and Smart Speed (trims silence between words/sentences during playback) -- applied live via ffmpeg, no new audio engine, no new install step. Off by default; needs FFmpeg (Help > Get FFmpeg...). Full seek/scrub-bar support while enhanced, not a degraded mode. Distinct from the existing download-time silence trim (which permanently shortens the saved file's leading/trailing silence once); Smart Speed is a live, reversible, mid-episode filter you can toggle on any episode at any time.

## 1.0.1

- Onedir packaging (was onefile): starts instantly instead of re-extracting to a temp folder on every launch. New consolidated `build_release.ps1` producing a staged app folder, a portable zip (with its own `data\` folder), and the installer from one build.
- Main page: the flat subscribed-shows list is now a real library tree -- pinned views (Favorites, New Episodes, Continue Listening, Inbox) above nested folders, with a full context menu.
- One state-aware Play/Pause/Stop transport button, a favorite-toggle button, Mute/Unmute.
- Resume Last Episode on Launch and a Recently Played submenu (distinct from Continue Listening).
- Play Queue promoted to a top-level menu item and Command Palette entry.
- Downloads now auto-reconnect on a dropped connection, configurable in Podcast Settings.
- Help > Get FFmpeg... safety net.
- Automatic Check for Updates: a throttled, silent check once a day on launch -- quiet unless a real update is found.
- Preferences... (Ctrl+,): a small dialog for Resume Last Episode on Launch and the new automatic update check.

## 1.0.0

- Initial release: podcasts as their own standalone app, sharing QUILL's own podcast feature code.
- Full Podcast Manager: pinned views, Inbox with per-show filing memory, Play Queue with keyboard reordering, Search Everywhere, filters.
- Feed-provided transcripts (Podcasting 2.0), episode notes with timestamp jump, chapters, sleep-timer-safe volume boost.
- Local podcasts with optional watched folders.
- Subscribe to ACB Media Podcasts in one command.
- Downloads with pause/resume all, Always Sync, auto-trim silence, normalize loudness.
- System tray presence with podcast controls.
- One data store shared with QUILL and Quill Radio.
- Check for Updates, Report a Bug, Redeem Unlock Code, Command Palette.
