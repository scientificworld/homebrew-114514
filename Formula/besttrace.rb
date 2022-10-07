class Besttrace < Formula
  homepage "https://en.ipip.net/product/client.html"
  url "https://cdn.ipip.net/17mon/besttrace4linux.zip"
  sha256 "6f759c09c84249566c47c5ab2b2001f581b3221509b9ca8606e6b80bedccaae7"
  version "1.3.2"
  uses_from_macos "traceroute"

  def install
    system "mv", "-f", "besttracemac", "besttrace"
    bin.install "besttrace"
  end

  test do
    system "#{bin}/besttrace", "--help"
  end
end
