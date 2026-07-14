"""QUILL Cast standalone launcher.

The application itself lives in the ``quill`` package (``quill.apps.podcasts``)
and runs the exact same feature code QUILL uses -- same podcast manager,
same play queue, same download engine. This package is only the product wrapper.
"""

from quill.apps.podcasts import main

__all__ = ["main"]
