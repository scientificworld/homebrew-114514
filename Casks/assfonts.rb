cask "assfonts" do
  version "0.7.3"

  arch arm: "aarch64", intel: "x86_64"
  sha256 arm:   "2bd36fb85055719d1d99f2dedb298e791cacaac4028ffed6f97c2d2b07093f7c",
         intel: "c9b20f4d1fffa151eebaec126c75a485d86e96b7c6609507aa5ef0edf48bbac7"

  url "https://github.com/wyzdwdz/assfonts/releases/download/v#{version}/assfonts-v#{version}-#{arch}-macOS.dmg"
  name "assfonts"
  desc "Subset fonts and embed them into an ASS subtitle"
  homepage "https://github.com/wyzdwdz/assfonts"

  app "assfonts-gui.app", target: "assfonts.app"
  binary "bin/assfonts"
  manpage "share/man/man1/assfonts.1.gz"
end
