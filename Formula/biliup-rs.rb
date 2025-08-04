class BiliupRs < Formula
  version "138.0.7204.35-1"
  homepage "https://github.com/biliup/biliup-rs"

  on_macos do
    on_arm do
      url "https://github.com/biliup/biliup-rs/releases/download/v#{version}/biliupR-v#{version}-aarch64-macos.tar.xz"
    end
    on_intel do
      url "https://github.com/biliup/biliup-rs/releases/download/v#{version}/biliupR-v#{version}-x86_64-macos.tar.xz"
    end
  end

  def install
    bin.install "biliup"
  end
end
