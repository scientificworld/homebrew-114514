import requests
from util import update_util, retry_util, acquire_util

# Icalingua++
data = retry_util(lambda: requests.get("https://api.github.com/repos/Icalingua-plus-plus/Icalingua-plus-plus/releases/latest").json())
if data["name"] != acquire_util("Casks/icalingua-plus-plus", "version"):
    update_util("Casks/icalingua-plus-plus", ver=data["name"])

# ClashX Meta
data = retry_util(lambda: requests.get("https://api.github.com/repos/MetaCubeX/ClashX.Meta/releases/latest").json())
if data["name"] != acquire_util("Casks/clashx-meta", "version"):
    update_util("Casks/clashx-meta", ver=data["name"])

# biliup-rs
data = retry_util(lambda: requests.get("https://api.github.com/repos/biliup/biliup-rs/releases/latest").json())
if data["tag_name"][0] == "v":
    version = data["tag_name"][1:]
    if version != acquire_util("Formula/biliup-rs", "version"):
        update_util("Formula/biliup-rs", ver=version)
