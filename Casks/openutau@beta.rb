cask "openutau@beta" do
  version "0.1.549"

  arch arm: "arm64", intel: "x64"
  sha256 arm:   "01c6182dd5838dde775b6be8325d172ecc2a55ddd40c69b57067c02327db7996",
         intel: "f3aa58e9f958ee4c740f78d497aee1aa8eb3baadd57f52e806455c674a3c8c56"

  url "https://github.com/stakira/OpenUtau/releases/download/#{version}/OpenUtau-osx-#{arch}.dmg"
  name "OpenUtau"
  desc "Open singing synthesis platform / Open source UTAU successor"
  homepage "https://www.openutau.com/"

  app "OpenUtau.app"

  conflicts_with cask: "openutau"
end
