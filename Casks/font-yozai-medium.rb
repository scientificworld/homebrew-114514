cask "font-yozai-medium" do
  version "0.862"
  sha256 "ed10965f02ae6432a44453c9a9bb22ce25706eb72d4db8db254c1582b9d86c44"

  url "https://github.com/lxgw/yozai-font/releases/download/v#{version}/Yozai-Medium.ttf"
  name "Yozai Font Medium"
  name "悠哉字体 Medium"
  homepage "https://github.com/lxgw/yozai-font"

  font "Yozai-Medium.ttf"

  # No zap stanza required
end
