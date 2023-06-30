import requests
from util import update_util

# Icalingua++
data = requests.get("https://api.github.com/repos/Icalingua-plus-plus/Icalingua-plus-plus/releases/latest").json()
update_util("Casks/icalingua-plus-plus", ver=data["name"])
