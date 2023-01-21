cask "icalingua-plus-plus" do
  version "2.8.6"
  sha256 "c01fb4833408e4e503f25499c5ad233bc4d91c2c4d66c33591a6793bdca32dcd"

  url "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus/releases/download/v#{version}/Icalingua++-#{version}_x64.dmg",
    verified: "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"
  name "Icalingua++"
  desc "A client for QQ and more."
  homepage "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"

  app "Icalingua++.app"
end
