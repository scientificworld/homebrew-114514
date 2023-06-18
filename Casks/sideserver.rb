cask "sideserver" do
  version "1.0.6"
  sha256 "cd3a185af744f4659f7adb6d846b0e8d718c0cabf2be917f3513a60f5b931d22"

  url "https://github.com/SideStore/SideServer-macOS/releases/download/v#{version}/SideServer.dmg"
  name "SideServer"
  desc "Glorified SideStore Installer in server-form to use as an optional backup anisette server, and optional auto-refresher of SideStore"
  homepage "https://sidestore.io"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "SideServer.app"

  uninstall quit: "io.SideStore.SideServer"

  zap trash: [
    "~/Library/Caches/io.SideStore.SideServer",
    "~/Library/Cookies/io.SideStore.SideServer.binarycookies",
    "~/Library/Preferences/io.SideStore.SideServer.plist",
  ]
end
