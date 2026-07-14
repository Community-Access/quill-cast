# PyInstaller spec for the one-file QUILL Cast build.
# Build with: pyinstaller quill-cast.spec  (see scripts/build_exe.ps1)
#
# collect_all("quill") brings the entire quill package -- code and package
# data (schemas, sounds, bundled quillins, assets) -- so nothing the shared
# feature code needs is missing from the frozen build. One file, windowed.

from PyInstaller.utils.hooks import collect_all

quill_datas, quill_binaries, quill_hiddenimports = collect_all("quill")

a = Analysis(
    ["launcher.py"],
    pathex=[],
    binaries=quill_binaries,
    datas=quill_datas,
    hiddenimports=quill_hiddenimports,
    hookspath=[],
    runtime_hooks=[],
    excludes=[
        # Basic app: QUILL fetches/uses these only for features Cast never
        # touches (speech transcription engines, neural TTS, science stacks).
        # Feed-provided transcripts are plain downloads and need none of them.
        "faster_whisper",
        "vosk",
        "kokoro_onnx",
        "onnxruntime",
        "torch",
        "numpy.f2py",
    ],
    noarchive=False,
)

pyz = PYZ(a.pure)

exe = EXE(
    pyz,
    a.scripts,
    a.binaries,
    a.datas,
    name="QUILLCast",
    console=False,
    upx=False,
    disable_windowed_traceback=False,
)
