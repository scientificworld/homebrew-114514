cask "detect-it-easy" do
  version "3.09"
  arch arm: "qt6_#{version}_arm64", intel: "#{version}_x86_64"

  sha256 arm:   "0763fd5790c79bc442242ad088b5ef637cfc6a99c422f0d0f1b344548ae7a43d",
         intel: "45a75bcd51b84afc54fe95bde63a0397f7bd7cc555af89cd557095ab83ed85cd"

  url "https://github.com/horsicq/DIE-engine/releases/download/#{version}/die_mac_#{arch}.pkg"
  name "Detect It Easy"
  desc "Program for determining types of files for Windows, Linux and MacOS."
  homepage "https://github.com/horsicq/Detect-It-Easy"

  pkg "die_mac_#{arch}.pkg"

  uninstall pkgutil: "com.yourcompany.DiE"
end
