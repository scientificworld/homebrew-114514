cask "icalingua-plus-plus" do
  version "2.7.7"
  sha256 "c568c15472cdc7e7e6571e73781ccf54a36b61ab22bbf6b8c9b4fadac14072ff"

  url "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus/releases/download/v#{version}/Icalingua++-#{version}_x64.dmg",
    verified: "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"
  name "Icalingua++"
  desc "A client for QQ and more."
  homepage "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"

  app "Icalingua++.app"
end
