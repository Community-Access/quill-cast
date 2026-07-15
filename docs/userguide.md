# QUILL Cast User Guide

Version 1.0

QUILL Cast is podcasts the way a screen reader user would design them: a small window whose library tree has focus the instant it opens, a Podcast Manager built entirely for the keyboard, spoken feedback for every action, and a tray icon so playback continues while you work.

## Getting started

Launch QUILL Cast from the Start Menu (or `quill-cast` from a terminal if you installed from source). The window opens with keyboard focus on your **Library** tree.

- No shows yet? Press Alt+S for the Subscriptions menu, then **Add Podcast...** to subscribe by search or feed URL -- or **Import OPML...** to bring a library from another podcast app, or **Subscribe to ACB Media Podcasts** for ACB's whole live directory in one step.
- With shows: arrow to one and press **Enter** to play its next unplayed episode -- no detour through the Manager required. If every episode is already played, Enter plays the most recent one and says so.
- Want QUILL Cast on the moment it opens? Check **Subscriptions > Resume Last Episode on Launch** once, and launching the app picks up exactly where you left off.

Everything QUILL Cast announces goes through the same announcement engine QUILL uses, so it speaks through your screen reader (JAWS, NVDA, Narrator) without stealing focus.

## The main window

Tab order: the now-playing line, the library tree, then five buttons.

- **Now playing** (read-only text): what is playing; mirrored in the status bar and the Episode menu.
- **Library** (tree): the same pinned views the Podcast Manager shows -- **Favorites**, **New Episodes**, **Continue Listening**, **Inbox** -- above your nested library folders and the shows filed in them, each with a live unplayed-episode count. Enter on a show plays its next episode; Enter on a pinned view opens the Podcast Manager to that view. Delete unsubscribes a show (with confirmation) or dissolves a folder (your shows step safely to the top level -- nothing is ever unsubscribed by deleting a folder). Shift+F10 opens the full context menu: Play/Stop, Add/Remove Favorites, Move to Folder, Unsubscribe, New Folder, and Open Manager.
- Buttons: **Play** (becomes **Pause** while playing, **Resume** while paused -- one transport control that is never dead), **Stop**, **Add to Favorites** (becomes **Remove from Favorites** when the playing show is already a favorite), **Open Manager...**, **Add Podcast...**.

## The Podcast Manager

The Manager (Ctrl+M) is where episode-level life happens, and it is the same Manager QUILL ships:

- **Pinned views** lead the folder tree: **Favorites**, **New Episodes**, **Continue Listening**, and the **Inbox**.
- **The Inbox** triages episodes rather than shows: route a show to the Inbox and its new episodes land there; file episodes into your own nested folders. Your first manual filing per show is remembered and applied automatically (Forget reverts it).
- **Play Queue**: Play Next or Add to Queue on any episode; the queue auto-advances, survives restarts, and reorders from the keyboard (Move Up/Down, or Mark then Move for long hops).
- **Search Everywhere** searches shows, episodes, your notes, and fetched transcripts at once and jumps to the result.
- **Transcripts**: when a feed provides one (Podcasting 2.0; VTT/SRT/JSON), save it to a file or open it -- cached for instant reopening. QUILL Cast never generates transcripts from audio; that stays in full QUILL.
- **Episode notes** timestamp the playing moment; Enter on a note jumps playback there.
- **Local podcasts**: turn folders of your own audio into shows, with optional watched folders that pick up dropped files.
- **Always Sync**, **auto-trim silence**, **normalize loudness**, and a live **volume boost** that respects the Sleep Timer's restore volume.

## Menus

### Subscriptions (Alt+S)

Open Podcast Manager... (Ctrl+M), Add Podcast..., Import OPML..., Export OPML..., New Folder... (creates a library folder without opening the Manager), Add Local Podcast..., Scan Watched Folders, Subscribe to ACB Media Podcasts, Podcast Settings..., **Resume Last Episode on Launch** (check item -- the appliance switch), **Preferences...** (Ctrl+,) -- Resume Last Episode on Launch and automatic Check for Updates in one small dialog, Send to Tray (Ctrl+W), Exit.

### Episode (Alt+E)

A live now-playing line, then Play/Pause (Ctrl+P), Stop, **Mute/Unmute**, Next Chapter, Previous Chapter, Add Episode Note..., **Play Queue...** (the same reorderable queue the Manager offers, now one keystroke away), a **Recently Played** submenu (your last fifteen episodes, newest first, playable inline), and Sleep Timer... (fade out and stop after a set time, restoring your volume).

### Downloads (Alt+D)

Pause All Downloads, Resume All Downloads.

### Help (Alt+H)

One standalone difference from QUILL: "Send Show Notes to Editor" copies notes to the clipboard instead, since there is no editor here.

- **Command Palette...** (Ctrl+Shift+P) -- every QUILL Cast command in one searchable list.
- **Get FFmpeg...** -- a safety net: ffmpeg ships inside QUILL Cast for trim/normalize passes, but if it ever goes missing this downloads the official build so those settings work again.
- **Redeem Unlock Code...** -- enter a signed unlock code for a pre-release capability. Verified entirely on your machine; nothing is transmitted. A code redeemed here counts for QUILL and Quill Radio too -- all three share one unlock store.
- **Check for Updates...** -- compares your version with the newest release of QUILL Cast, downloads the installer in-app with spoken progress, then offers Install now (closes the app and runs the installer) or Open folder. QUILL Cast also runs this check quietly once a day on launch -- silent unless it actually finds something; Subscriptions > Preferences (Ctrl+,) turns it off.
- **About QUILL Cast** -- version, sync statement, and the project address.

## Hardware media keys

If your keyboard has media keys, Play/Pause, Stop, and Next/Previous Track (mapped to chapters) control QUILL Cast system-wide while it runs -- even from the tray. Keys another app already owns are left alone. Starting an episode also silences a playing radio stream and vice versa: nothing ever double-plays.

## Downloads that survive a dropped connection

If your internet hiccups mid-download, QUILL Cast first tries to quietly resume from where it left off; if the drop is real, it waits and reconnects automatically instead of leaving the episode stuck in Failed status -- you'll hear "Download connection dropped; reconnecting" when it happens. **Subscriptions > Podcast Settings...** has an **"If a download's connection drops"** section: turn automatic reconnecting on or off, and set how many attempts and how many seconds between them.

## The system tray

Closing the window keeps QUILL Cast in the notification area. Right-click (or Shift+F10 on) the tray icon for Show, podcast controls, and Exit. Double-click to bring the window back.

## Sharing data with QUILL

QUILL Cast reads and writes the same data store as QUILL and Quill Radio (`%APPDATA%\Quill`). Subscribe here, and the show is subscribed in QUILL's Podcasts; your queue, positions, notes, and downloads are one set of data. Local podcasts are stored outside the synced data folder by construction. Uninstalling QUILL Cast never deletes the shared store.

## Keyboard reference

| Action | Key |
| --- | --- |
| Open Podcast Manager | Ctrl+M |
| Play/Pause | Ctrl+P |
| Send to tray | Ctrl+W |
| Preferences | Ctrl+, |
| Play selected show's next episode | Enter (in the tree) |
| Unsubscribe / delete folder | Delete (in the tree) |
| Tree context menu | Shift+F10 (in the tree) |
| Subscriptions menu | Alt+S |
| Episode menu | Alt+E |
| Downloads menu | Alt+D |
| Help menu | Alt+H |

## Troubleshooting

- **A feed will not add.** Check the URL is the RSS/Atom feed itself, not the show's web page; the Add dialog's search can usually find the show by name instead.
- **An episode will not download and reconnect isn't fixing it.** Downloads menu > Resume All Downloads; check Subscriptions > Podcast Settings... to confirm reconnecting is on and the attempt/wait numbers give it enough tries. Some hosts rate-limit regardless.
- **Positions seem stale across apps.** Positions are written on pause/stop/switch; if two apps play simultaneously against the same store, the last writer wins.
- **Resume Last Episode on Launch didn't pick up my episode.** It only fires at app startup, and only if the episode is still in your library (an unsubscribed show or a removed download won't resume).
