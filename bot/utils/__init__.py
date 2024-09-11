import os

from . import launcher
from .logger import logger

if not os.path.exists(path="sessions"):
    os.mkdir(path="sessions")
