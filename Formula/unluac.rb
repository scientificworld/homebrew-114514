class Unluac < Formula
  desc "A decompiler for Lua 5.x"
  homepage "https://sourceforge.net/projects/unluac"
  version "2025_12_23"
  url "https://sourceforge.net/projects/unluac/files/Unstable/unluac_#{version}.jar"
  sha256 "98be0fa84ac73ca66dce2842a2e4512226f4c611b6500dc96415571fc5538fcc"

  depends_on "openjdk"

  def install
    libexec.install "unluac_#{version}.jar"
    bin.write_jar_script libexec/"unluac_#{version}.jar", "unluac"
  end
end
