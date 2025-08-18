cask "assfonts" do
  version "0.7.3"

  arch arm: "aarch64", intel: "x86_64"
  sha256 arm:   "80d97854129a0d75ecda60533930654ed3c18a8183605a75b602f37bf23d8859",
         intel: "c90e1e0f439296f41c5b9d1c434f029965ab0b9c1d02f41e33495cd9d7c45a62"

  url "https://github.com/wyzdwdz/assfonts/releases/download/v#{version}/assfonts-v#{version}-#{arch}-macOS.dmg"
  name "assfonts"
  desc "Subset fonts and embed them into an ASS subtitle"
  homepage "https://github.com/wyzdwdz/assfonts"

  app "assfonts-gui.app", target: "assfonts.app"
  binary "bin/assfonts"
  manpage "share/man/man1/assfonts.1.gz"
end
