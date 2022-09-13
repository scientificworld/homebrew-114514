class Arti < Formula
  desc "An implementation of Tor, in Rust."
  homepage "https://gitlab.torproject.org/tpo/core/arti"
  url "https://gitlab.torproject.org/tpo/core/arti/-/archive/main/arti-main.zip"
  license "Apache-2.0 or MIT"
  version "1.0.0"

  depends_on "rust"
  depends_on "pkg-config"

  def install
    system "cargo", "build", "-p", "arti", "--release"
    bin.install "target/release/arti"
    lib.install "target/release/libarti.rlib"
  end

  test do
    system "#{bin}/arti", "--version"
  end
end
