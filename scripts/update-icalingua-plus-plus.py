import requests, json
data = requests.get("https://api.github.com/repos/Icalingua-plus-plus/Icalingua-plus-plus/releases/latest").json()
with open("Casks/icalingua-plus-plus.rb", "w") as file:
    file.write(f"""cask "icalingua-plus-plus" do
  version "{data["name"]}"

  url "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus/releases/download/v#{{version}}/Icalingua++-#{{version}}-universal.dmg",
    verified: "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"
  name "Icalingua++"
  desc "A client for QQ and more."
  homepage "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"

  app "Icalingua++.app"
end""")
