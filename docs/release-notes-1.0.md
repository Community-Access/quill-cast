# QUILL Cast 1.0 -- Release Notes

Your shows, on their own. QUILL Cast takes the podcast environment QUILL users already know and gives it a window, a menu bar, and a tray icon of its own -- for the days you want your queue without the manuscript.

## What's new in 1.0.2

- **Sound Enhancements.** Episode > Sound Enhancements... adds an equalizer preset (Flat, Bass Boost, Voice Clarity, Podcast), a compressor ("Even Out Volume"), and **Smart Speed** (trims silence between words and sentences, live and reversible on any episode, distinct from the one-time leading/trailing trim Downloads already offers) -- all applied through the ffmpeg QUILL Cast already uses for download processing. Off by default. Full seek and scrub-bar support while enhanced: scrubbing or toggling anything on/off never loses your place or forces a paused episode to resume.
- **Download All Episodes / Remove All Episodes.** New on every show's context menu, in the Podcast Manager and the main library tree alike. Download All queues everything not already downloaded or in progress -- no extra confirmation, just like downloading one episode. Remove All Episodes confirms first, then -- only if the show actually has downloaded files -- asks separately whether to delete those too; either way the show stays subscribed, so a future feed refresh can bring episodes back.

## What's new in 1.0.1

- **Automatic Check for Updates.** QUILL Cast quietly checks for a newer version once a day when it launches -- silent unless a real update is found, at which point you get the same "download it now?" prompt Help > Check for Updates always gave you. Throttled so it never hits the network on every single launch.
- **Preferences...** (Ctrl+,) is a new, small dialog gathering the app's startup behavior in one place: Resume Last Episode on Launch and the new automatic update check, each its own checkbox. Turning either off takes effect immediately.

## Highlights

- **Your library, on the front page.** The main window is your library tree -- the same pinned views the Manager shows (Favorites, New Episodes, Continue Listening, Inbox) above your nested folders and the shows filed in them, each with a live unplayed count and a full context menu (Play/Stop, Favorite toggle, Move to Folder, Unsubscribe, New Folder) one Shift+F10 away. Enter on a show plays its next unplayed episode directly -- no detour through the Manager required.
- **One transport button, not two dead ones.** Play becomes Pause while playing and Resume while paused, exactly like the panel it sits on. A Favorites button tracks whatever is playing and flips to Remove when it's already saved.
- **Podcasts as an appliance.** Check Subscriptions > Resume Last Episode on Launch once, and opening QUILL Cast is all you ever do -- it picks up exactly where you left off. A Recently Played submenu (Episode menu) keeps your last fifteen episodes one keystroke deep, distinct from the Continue Listening view's in-progress list.
- **Play Queue, promoted.** The same reorderable cross-show queue the Manager offers now has its own top-level menu item and Command Palette entry -- no longer a button buried in a dialog.
- **Mute, everywhere you'd expect it.** A dedicated Mute/Unmute command silences playback without losing your level.
- **Downloads that survive a dropped connection.** If your internet hiccups mid-download, QUILL Cast retries automatically instead of leaving the episode stuck in Failed status, resuming from the partial file already on disk. How many attempts and how long to wait between them are yours to tune in Podcast Settings.
- **The whole Manager.** Pinned Favorites, New Episodes, and Continue Listening views; an Inbox that triages episodes into your own folders and remembers how you file each show; episode and show filters that narrow the list live.
- **A Play Queue that behaves.** Play Next or Add to Queue from any episode, auto-advance when one ends, survives restarts, and reorders entirely from the keyboard -- Move Up/Down, or Mark and Move for long hops.
- **Search Everywhere.** Shows, episodes, your notes, and fetched transcripts, one search, straight to the result.
- **Transcripts and notes.** Feed-provided transcripts (Podcasting 2.0) save or open instantly from cache; episode notes timestamp the playing moment, and Enter on a note jumps playback there.
- **Local podcasts.** Your own audio files become shows, with watched folders that turn dropped files into new episodes. Stored outside the synced data folder by construction.
- **ACB Media, one command.** Subscribe to ACB's whole live directory idempotently.
- **Downloads that respect you.** Pause/resume all; Always Sync for shows you want complete; auto-trim silence and normalize loudness on finished downloads; a volume boost that never disturbs the Sleep Timer's restore volume.
- **A tray citizen.** Close to the notification area and keep listening; control playback from the tray menu.
- **Two flavors, everything bundled.** A system installer and a truly portable zip whose `data` folder keeps your whole library on the stick. ffmpeg included, its own app icon, no downloads ever -- and if ffmpeg somehow goes missing, **Help > Get FFmpeg...** restores it from the official source.
- **Spoken feedback everywhere.** Every action announces its outcome through your screen reader -- JAWS, NVDA, or Narrator -- without stealing focus.
- **One data store.** Subscriptions, queue, positions, notes, and downloads are shared with QUILL and Quill Radio. Subscribe here, see it there.
- **Check for Updates, built in.** The update check compares your version against this repository's releases, downloads the installer in-app with spoken progress, and offers Install now.
- **Folders from the menu.** Subscriptions > New Folder... creates a library folder without opening the Manager; Send to Tray (Ctrl+W) and Exit live there too. (Send Show Notes to Editor copies to the clipboard here -- there is no editor buffer to send to.)

## What QUILL Cast deliberately is not

It is not QUILL minus some menus -- it is the podcast app, period. The editor, AI, speech transcription engines, braille, and speech-synthesis stacks are not installed at all, which keeps the install small and the app simple. Feed transcripts still work fully; generating transcripts from audio is full QUILL's job, one Help menu item away.

## Not a fork -- a guarantee

QUILL Cast runs the exact same podcast feature code as QUILL, from the same upstream package. Fixes and features land upstream once and reach QUILL, QUILL Cast, and Quill Radio together. This repository only carries the wrapper, the installer, and these docs.

## Requirements

Windows 10 or 11, x64 (or ARM64 under emulation). No Python installation required.

## Known limitations

- Global hotkeys for transport are configured from full QUILL (Tools > Global Hotkeys...), not from this app, in 1.0.
