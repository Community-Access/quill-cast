# QUILL Cast 1.0 -- Release Notes

Your shows, on their own. QUILL Cast takes the podcast environment QUILL users already know and gives it a window, a menu bar, and a tray icon of its own -- for the days you want your queue without the manuscript.

## Highlights

- **Shows first.** The app opens with your subscriptions focused; Enter opens the Podcast Manager on that show.
- **The whole Manager.** Pinned Favorites, New Episodes, and Continue Listening views; an Inbox that triages episodes into your own folders and remembers how you file each show; episode and show filters that narrow the list live.
- **A Play Queue that behaves.** Play Next or Add to Queue from any episode, auto-advance when one ends, survives restarts, and reorders entirely from the keyboard -- Move Up/Down, or Mark and Move for long hops.
- **Search Everywhere.** Shows, episodes, your notes, and fetched transcripts, one search, straight to the result.
- **Transcripts and notes.** Feed-provided transcripts (Podcasting 2.0) save or open instantly from cache; episode notes timestamp the playing moment, and Enter on a note jumps playback there.
- **Local podcasts.** Your own audio files become shows, with watched folders that turn dropped files into new episodes. Stored outside the synced data folder by construction.
- **ACB Media, one command.** Subscribe to ACB's whole live directory idempotently.
- **Downloads that respect you.** Pause/resume all; Always Sync for shows you want complete; auto-trim silence and normalize loudness on finished downloads; a volume boost that never disturbs the Sleep Timer's restore volume.
- **A tray citizen.** Close to the notification area and keep listening; control playback from the tray menu.
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
