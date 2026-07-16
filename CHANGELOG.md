# Changelog

All notable changes to QUILL Cast are documented here. See `docs/release-notes-1.0.md` for the fuller narrative version.

## 1.0.4

- Sound Enhancements is now a real three-band equalizer: Bass, Mid, and Treble sliders (-12 to +12 dB each), freely adjustable. The old presets (Flat/Bass Boost/Voice Clarity/Podcast) still work as a "Quick preset" shortcut. Every enhancement setting -- the three bands, Even Out Volume, and Smart Speed -- is now **per-podcast**: a shared default plus a per-show override, the same way playback speed already worked. Open Sound Enhancements while an episode is playing to adjust that show specifically; open it with nothing playing to adjust the shared default.
- Check for Updates (Help menu) now shows a real dialog when you're already up to date, instead of only a spoken announcement that was easy to miss.
- Preferences (Ctrl+,) gained "Announce dialog transitions" (off by default) to reduce alert noise -- previously every dialog always spoke "Entered/Exited" cues with no way to turn it off.
- Help menu gained User Guide, Release Notes, and Product Requirements items, opening the bundled documentation right in your browser.

## 1.0.3

- Inbox (and every cross-show list -- New Episodes, Continue Listening, Favorites) can now be shown three ways, via a new **"View cross-show lists as"** combo box: **Flat list** (one chronological stream across every show), **Grouped in list** (the pre-existing look -- each show's episodes clustered together in the flat list), or **Folders per podcast** (real expandable tree nodes, one per show, under each pinned view). Grouped is the default, so nothing changes until you touch the combo box.
- The pre-existing "Sort episodes" control now actually applies to these cross-show views too (it previously only affected a single show's own episode list) -- and each podcast can have its **own** sort order: select a show (directly, or its Folders node) and change Sort Episodes to override just that podcast, leaving the shared default for everything else. Fixed a related bug where setting a podcast's own playback speed silently reset any other override that podcast already had.

## 1.0.2

- Sound Enhancements (Episode > Sound Enhancements...): an equalizer preset (Flat/Bass Boost/Voice Clarity/Podcast), a compressor ("Even Out Volume"), and Smart Speed (trims silence between words/sentences during playback) -- applied live via ffmpeg, no new audio engine, no new install step. Off by default; needs FFmpeg (Help > Get FFmpeg...). Full seek/scrub-bar support while enhanced, not a degraded mode. Distinct from the existing download-time silence trim (which permanently shortens the saved file's leading/trailing silence once); Smart Speed is a live, reversible, mid-episode filter you can toggle on any episode at any time.
- Download All Episodes and Remove All Episodes, on every show's context menu (Podcast Manager and the main library tree alike): Download All queues everything not already downloaded or in progress; Remove All Episodes asks to confirm, then -- only if any episode has a downloaded file -- asks separately whether to delete those files too. The show stays subscribed either way.

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
