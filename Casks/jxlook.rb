cask "jxlook" do
  version "0.1.4"
  sha256 "db6dcb4a715324e7a7c6044c33d3a7ca2a71dc357c2e3d1ac5312c6d540379a9"

  url "https://github.com/yllan/JXLook/releases/download/v#{version}/JXLook-#{version}.app.tbz"
  name "JXLook"
  homepage "https://github.com/yllan/JXLook"

  depends_on macos: ">= :big_sur"

  app "JXLook.app"
end
