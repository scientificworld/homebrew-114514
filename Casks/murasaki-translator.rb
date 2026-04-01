cask "murasaki-translator" do
  name "Murasaki Translator"
  desc "Murasaki 系列模型官方推理前端"
  homepage "https://github.com/soundstarrain/Murasaki-Translator"

  version "2.2.2"

  on_arm do
    url "https://github.com/soundstarrain/Murasaki-Translator/releases/download/v#{version}/Murasaki.Translator-#{version}-arm64.dmg"
    sha256 "90029f3eb94b7845ce956942f9231f62558af78ea10ee4d0cbe56c8239f00d74"
  end

  on_intel do
    url "https://github.com/soundstarrain/Murasaki-Translator/releases/download/v#{version}/Murasaki.Translator-#{version}.dmg"
    sha256 "860a75be24b09ccb553726d1f3133e09b786305c1f5b57c691e52a9bcbea455c"
  end

  app "Murasaki Translator.app"
end
