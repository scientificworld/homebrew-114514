cask "font-yozai-regular" do
  version "0.862"
  sha256 "3ef68978db83665246a1d79cc1a080cd0fb4d6f0b358432445ba52be8ca45836"

  url "https://github.com/lxgw/yozai-font/releases/download/v#{version}/Yozai-Regular.ttf"
  name "Yozai Font Regular"
  name "悠哉字体 Regular"
  homepage "https://github.com/lxgw/yozai-font"

  font "Yozai-Regular.ttf"

  # No zap stanza required
end
