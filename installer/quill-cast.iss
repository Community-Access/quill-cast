; QUILL Cast installer -- ships the PyInstaller one-file build.
; Compile with:  ISCC quill-cast.iss [/DFfmpegDir=<dir with ffmpeg.exe>]
; Prerequisite:  ..\dist\QUILLCast.exe  (scripts\build_exe.ps1)
;
; Everything the app needs is bundled -- no on-demand component downloads.
; FfmpegDir supplies ffmpeg.exe/ffprobe.exe (auto-trim silence, normalize
; loudness); they install to {app}\tools\ffmpeg, which the app finds via
; QUILL_APP_ROOT.

#define AppName "QUILL Cast"
#define AppVersion "1.0.0"
#define AppPublisher "Community Access"
#define AppURL "https://github.com/Community-Access/quill-cast"
#define AppExeName "QUILLCast.exe"

[Setup]
AppId={{316B5D30-E16B-4973-95B6-968F5D897FD7}}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
VersionInfoVersion=1.0.0.0
VersionInfoCompany={#AppPublisher}
VersionInfoDescription={#AppName} accessible podcast player
DefaultDirName={autopf}\{#AppName}
DefaultGroupName={#AppName}
DisableDirPage=no
DisableProgramGroupPage=auto
AllowNoIcons=yes
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
MinVersion=10.0
OutputBaseFilename=QUILL-Cast-Setup-{#AppVersion}
Compression=lzma2/ultra
SolidCompression=yes
WizardStyle=modern
CloseApplications=force
RestartApplications=no
UninstallDisplayName={#AppName} {#AppVersion}
UninstallDisplayIcon={app}\{#AppExeName}
SetupIconFile=..\assets\quill-cast.ico
LicenseFile=..\LICENSE
SetupLogging=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\dist\{#AppExeName}"; DestDir: "{app}"; Flags: ignoreversion
#ifdef FfmpegDir
Source: "{#FfmpegDir}\ffmpeg.exe"; DestDir: "{app}\tools\ffmpeg"; Flags: ignoreversion
Source: "{#FfmpegDir}\ffprobe.exe"; DestDir: "{app}\tools\ffmpeg"; Flags: ignoreversion skipifsourcedoesntexist
#endif
Source: "..\docs\userguide.md"; DestDir: "{app}\docs"; Flags: ignoreversion
Source: "..\docs\release-notes-1.0.md"; DestDir: "{app}\docs"; Flags: ignoreversion
Source: "..\README.md"; DestDir: "{app}"; DestName: "README-QUILL-Cast.md"; Flags: ignoreversion

[Icons]
Name: "{group}\{#AppName}"; Filename: "{app}\{#AppExeName}"; WorkingDir: "{app}"
Name: "{group}\{#AppName} User Guide"; Filename: "{app}\docs\userguide.md"
Name: "{group}\Uninstall {#AppName}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#AppName}"; Filename: "{app}\{#AppExeName}"; WorkingDir: "{app}"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; Flags: unchecked

[Run]
Filename: "{app}\{#AppExeName}"; Description: "Launch {#AppName}"; Flags: postinstall nowait skipifsilent unchecked

; Deliberately NO data-wipe prompt on uninstall: QUILL Cast shares its
; settings, subscriptions, and downloads store (%APPDATA%\Quill) with QUILL
; and Quill Radio. Removing this app must never destroy data a sibling app
; still uses; the full QUILL uninstaller owns that decision.
