class Tcping < Formula
  version "3.7"
  homepage "https://github.com/paradiseduo/tcping"
  url "https://github.com/paradiseduo/tcping/releases/download/#{version}/tcping.zip"
  sha256 "ecc2c87539379b94edd9ebaaf60bba8ef04276842594f88d7436287f6f394d28"

  def install
    bin.install "tcping"
  end

  test do
    system "#{bin}/tcping", "--help"
  end
end
