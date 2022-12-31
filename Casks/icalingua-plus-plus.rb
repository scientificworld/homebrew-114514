cask "icalingua-plus-plus" do
  version "2.8.3"
  sha256 "3dd48bc5e899446dd28b09f4a95047b79ccbb03fe0e62c44fc05c9f3d4d0d8ab"

  url "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus/releases/download/v#{version}/Icalingua++-#{version}_x64.dmg",
    verified: "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"
  name "Icalingua++"
  desc "A client for QQ and more."
  homepage "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"

  app "Icalingua++.app"
end
