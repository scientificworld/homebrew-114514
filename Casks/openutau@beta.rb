cask "openutau@beta" do
  version "0.1.568"

  arch arm: "arm64", intel: "x64"
  sha256 arm:   "593cf45c188501f277c5e4d735e9ac6efb2f3c5cc126052d1c14a88100ede30e",
         intel: "3deaa7e2d2dcf2c08def3709c565a2228ed640a886ef7b039dcea8de4e269301"

  url "https://github.com/stakira/OpenUtau/releases/download/#{version}/OpenUtau-osx-#{arch}.dmg"
  name "OpenUtau"
  desc "Open singing synthesis platform / Open source UTAU successor"
  homepage "https://www.openutau.com/"

  app "OpenUtau.app"

  conflicts_with cask: "openutau"
end
