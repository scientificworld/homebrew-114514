cask "libreoffice-language-pack-cn" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.4.2"

  on_intel do
    sha256 "9d70abe7f0fddcbc84ea79a7a3a91731b76c0714ebb11add064339e3ae579ee4"
  end
  on_arm do
    sha256 "d32cbd8c894dd4506b03672bf3f8b8792d76e435de7db11488b1a4df2b8fe163"
  end

  url "https://mirrors.cloud.tencent.com/libreoffice/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}_langpack_zh-CN.dmg",
      verified: "mirrors.cloud.tencent.com/libreoffice/libreoffice/stable/"
  name "LibreOffice Language Pack (zh-CN)"
  desc "Collection of alternate languages for LibreOffice"
  homepage "https://zh-cn.libreoffice.org/"

  livecheck do
    cask "libreoffice"
  end

  depends_on cask: "libreoffice"
  depends_on macos: ">= :sierra"

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten
  # and that for this cask it is indeed this simple.
  # See https://github.com/Homebrew/homebrew-cask/pull/52893
  uninstall delete: "#{staged_path}/#{token}"
end
