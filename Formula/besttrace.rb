class Besttrace < Formula
  homepage "https://en.ipip.net/product/client.html"
  url "https://cdn.ipip.net/17mon/besttrace4linux.zip"
  sha256 "d8e7bbc2b46432238bcfa9d5416451e701a211499944551480bb53c441471a47"
  version "1.3.5.2"
  uses_from_macos "traceroute"

  def install
    system "mv", "-f", "besttracemac", "besttrace"
    bin.install "besttrace"
  end

  test do
    system "#{bin}/besttrace", "--help"
  end
end
