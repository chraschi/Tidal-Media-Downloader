from setuptools import setup, find_packages
from tidal_dl.printf import VERSION

APP = ["tidal_dl/__init__.py"]
APP_NAME = "tidal-dl"
DATA_FILES = []
OPTIONS = {
    #'emulate_shell_environment': True,
    'semi_standalone': True,
    #'redirect_stdout_to_asl': True,
    'arch': "x86_64",
    'plist': {
        'CFBundleName': APP_NAME,
        'CFBundleDisplayName': APP_NAME,
        'CFBundleGetInfoString': "Tidal Music Downloader Advanced",
        'CFBundleVersion': VERSION,
        'CFBundleShortVersionString': VERSION,
        'CFBundleExecutable': 'tidal-dl-launcher',
        'NSHumanReadableCopyright': "Copyright 2023, Mein Name, All Rights Reserved"
    },
    'includes': ["requests",
                "colorama",
                "prettytable",
                "mutagen",
                "psutil",
                "pycryptodome",
                "aigpy",
                "lyricsgenius",
                "pydub"],
    'iconfile': 'tidal-dl.icns',
}

setup(
    name=APP_NAME,
    app=APP,
    data_files=DATA_FILES,
    options={'py2app': OPTIONS},
    setup_requires=["py2app"],
    packages=find_packages(exclude=['tidal_gui*'])
)