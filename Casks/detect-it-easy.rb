cask "detect-it-easy" do
  version "3.10"
  arch arm: "qt6_#{version}_arm64", intel: "#{version}_x86_64"

  sha256 arm:   "2640db7dbf0926c0abf8fe60e801763a3bd9c3b20d0ac8f1fbf1dad16f030c43",
         intel: "401ca04aa65ab67f9bc11ed1af549cdcfac85718c5402cd4deb9b21f02d0a860"

  url "https://github.com/horsicq/DIE-engine/releases/download/#{version}/die_mac_#{arch}.pkg"
  name "Detect It Easy"
  desc "Program for determining types of files for Windows, Linux and MacOS."
  homepage "https://github.com/horsicq/Detect-It-Easy"

  pkg "die_mac_#{arch}.pkg"

  uninstall pkgutil: "ntinfo.die"
end
