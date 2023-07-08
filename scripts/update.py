import requests
from util import update_util

# Icalingua++
data = requests.get("https://api.github.com/repos/Icalingua-plus-plus/Icalingua-plus-plus/releases/latest").json()
update_util("Casks/icalingua-plus-plus", ver=data["name"])

# ClashX Meta
data = requests.get("https://api.github.com/repos/MetaCubeX/ClashX.Meta/releases/latest").json()
update_util("Casks/clashx-meta", ver=data["name"])
