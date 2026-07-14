# QUILL Cast User Guide

Version 1.0

QUILL Cast is podcasts the way a screen reader user would design them: a small window whose subscribed-shows list has focus the instant it opens, a Podcast Manager built entirely for the keyboard, spoken feedback for every action, and a tray icon so playback continues while you work.

## Getting started

Launch QUILL Cast from the Start Menu (or `quill-cast` from a terminal if you installed from source). The window opens with keyboard focus on your **Subscribed shows** list.

- No shows yet? Press Alt+S for the Subscriptions menu, then **Add Podcast...** to subscribe by search or feed URL -- or **Import OPML...** to bring a library from another podcast app, or **Subscribe to ACB Media Podcasts** for ACB's whole live directory in one step.
- With shows: arrow to one and press **Enter** to open it in the Podcast Manager, where episodes live.

Everything QUILL Cast announces goes through the same announcement engine QUILL uses, so it speaks through your screen reader (JAWS, NVDA, Narrator) without stealing focus.

## The main window

Tab order: the now-playing line, the subscribed-shows list, then four buttons.

- **Now playing** (read-only text): what is playing; mirrored in the status bar and the Episode menu.
- **Subscribed shows** (list): Enter or double-click opens the Podcast Manager on that show.
- Buttons: **Open Manager...**, **Add Podcast...**, **Play/Pause**, **Stop**.

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

Open Podcast Manager... (Ctrl+M), Add Podcast..., Import OPML..., Export OPML..., Add Local Podcast..., Scan Watched Folders, Subscribe to ACB Media Podcasts, Podcast Settings...

### Episode (Alt+E)

A live now-playing line, then Play/Pause (Ctrl+P), Stop, Next Chapter, Previous Chapter, Add Episode Note...

### Downloads (Alt+D)

Pause All Downloads, Resume All Downloads.

### Help (Alt+H)

- **Open in Quill** -- launch the full QUILL editor. (One standalone difference: "Send Show Notes to Editor" copies notes to the clipboard instead, since there is no editor here.)
- **Redeem Unlock Code...** -- enter a signed unlock code for a pre-release capability. Verified entirely on your machine; nothing is transmitted. A code redeemed here counts for QUILL and Quill Radio too -- all three share one unlock store.
- **Check for Updates...** -- compares your version with the newest release of QUILL Cast and offers to open the download page.
- **About QUILL Cast** -- version, sync statement, and the project address.

## The system tray

Closing the window keeps QUILL Cast in the notification area. Right-click (or Shift+F10 on) the tray icon for Show, podcast controls, and Exit. Double-click to bring the window back.

## Sharing data with QUILL

QUILL Cast reads and writes the same data store as QUILL and Quill Radio (`%APPDATA%\Quill`). Subscribe here, and the show is subscribed in QUILL's Podcasts; your queue, positions, notes, and downloads are one set of data. Local podcasts are stored outside the synced data folder by construction. Uninstalling QUILL Cast never deletes the shared store.

## Keyboard reference

| Action | Key |
| --- | --- |
| Open Podcast Manager | Ctrl+M |
| Play/Pause | Ctrl+P |
| Open selected show | Enter (in the list) |
| Subscriptions menu | Alt+S |
| Episode menu | Alt+E |
| Downloads menu | Alt+D |
| Help menu | Alt+H |

## Troubleshooting

- **A feed will not add.** Check the URL is the RSS/Atom feed itself, not the show's web page; the Add dialog's search can usually find the show by name instead.
- **An episode will not download.** Downloads menu > Resume All Downloads; some hosts rate-limit, and the queue retries.
- **Positions seem stale across apps.** Positions are written on pause/stop/switch; if two apps play simultaneously against the same store, the last writer wins.
