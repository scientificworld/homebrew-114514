cask "icalingua-plus-plus" do
  version "2.9.13"

  url "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus/releases/download/v#{version}/Icalingua++-#{version}-universal.dmg",
    verified: "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"
  name "Icalingua++"
  desc "A client for QQ and more."
  homepage "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"

  app "Icalingua++.app"
end