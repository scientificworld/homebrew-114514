class Biliup < Formula
  version "0.1.19"
  homepage "https://github.com/biliup/biliup-rs"

  on_macos do
    on_arm do
      url "https://github.com/biliup/biliup-rs/releases/download/v0.1.19/biliupR-v#{version}-aarch64-macos.tar.xz"
      sha256 "c0b03c22ae253f7f74d2799568cd891c40ccd040220fc4a1666210ac40aadf27"
    end
    on_intel do
      url "https://github.com/biliup/biliup-rs/releases/download/v0.1.19/biliupR-v#{version}-x86_64-macos.tar.xz"
      sha256 "9e7b64d38837e348e8f5d6f7a58eb26d588075659faa61b4d8422f99576394ca"
    end
  end

  def install
    bin.install "biliup"
  end
end
