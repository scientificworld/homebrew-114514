cask "icalingua-plus-plus" do
  version "2.7.3"
  sha256 "52af16ebcdfe87183a7fcf50bf77a4e29c6036e04dcd298f6a7137abea4895b0"

  url "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus/releases/download/v#{version}/Icalingua++-#{version}_x64.dmg",
    verified: "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"
  name "Icalingua++"
  desc "A client for QQ and more."
  homepage "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"

  app "Icalingua++.app"
end
