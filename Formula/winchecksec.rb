class Winchecksec < Formula
  version "3.1.0"
  desc "Checksec, but for Windows"
  url "https://github.com/trailofbits/winchecksec/releases/download/v#{version}/macos-latest.Release.zip"
  sha256 "6485c2be578a688e3b8441685294dd68a8ca4a4e196b01f3d3b82f136b382491"
  homepage "https://github.com/trailofbits/winchecksec"
  license "Apache-2.0"

  def install
    bin.install "winchecksec"
  end
end
