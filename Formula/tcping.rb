class Tcping < Formula
  version "3.6"
  homepage "https://github.com/paradiseduo/tcping"
  url "https://github.com/paradiseduo/tcping/releases/download/#{version}/tcping.zip"
  sha256 "dc7e55a496183677e27aa54e19ae1b69319226c8b012ced849acb99ee93da610"

  def install
    bin.install "tcping"
  end

  test do
    system "#{bin}/tcping", "--help"
  end
end
