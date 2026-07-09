class Haru < Formula
  version "1.0.3"
  homepage "https://github.com/biliup/biliup"
  desc "haru is a tiny cat living in your terminal."

  on_macos do
    on_arm do
      url "https://github.com/HyacinthHaru/haru/releases/download/v1.0.3/haru-cat-aarch64-apple-darwin.tar.xz"
      sha256 "a68aa6d4f17f488fcf10b48059a5a0dcd8136446bf3bf9b726e2b20d5ac5e06b"
    end
    on_intel do
      url "https://github.com/HyacinthHaru/haru/releases/download/v1.0.3/haru-cat-x86_64-apple-darwin.tar.xz"
      sha256 "0060dfedb5c0d94dc6aded6bec4d1f4bc05ea41ac22e19340f4639924ddc4e95"
    end
  end

  def install
    bin.install "haru"
  end
end
