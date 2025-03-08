cask "openutau" do
  version "0.1.529"

  sha256 "b5a5ac18cbd41f5d3146e0693a0d053b1b36c2e3b63c0d74b67d63d4f35aa10f"

  url "https://github.com/stakira/OpenUtau/releases/download/build/#{version}/OpenUtau-osx-x64.dmg"
  name "OpenUtau"
  desc "Open singing synthesis platform / Open source UTAU successor"
  homepage "https://www.openutau.com/"

  app "OpenUtau.app"

  conflicts_with cask: "openutau@beta"
end
