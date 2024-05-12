import requests
from util import update_util, retry_util

# Icalingua++
data = retry_util(lambda: requests.get("https://api.github.com/repos/Icalingua-plus-plus/Icalingua-plus-plus/releases/latest").json())
update_util("Casks/icalingua-plus-plus", ver=data["name"])

# ClashX Meta
data = retry_util(lambda: requests.get("https://api.github.com/repos/MetaCubeX/ClashX.Meta/releases/latest").json())
update_util("Casks/clashx-meta", ver=data["name"])

# biliup-rs
data = retry_util(lambda: requests.get("https://api.github.com/repos/biliup/biliup-rs/releases/latest").json())
if data["tag_name"][0] == "v":
    update_util("Formula/biliup-rs", ver=data["tag_name"][1:])
