cask "icalingua-plus-plus" do
  version "2.7.1"
  sha256 "3768bbc1dc60735c8cd55e8ca39dbd7be3360c25884651f555643fe0709c035a"

  url "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus/releases/download/v#{version}/Icalingua++-#{version}_x64.dmg",
    verified: "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"
  name "Icalingua++"
  desc "A client for QQ and more."
  homepage "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"

  app "Icalingua++.app"
end
