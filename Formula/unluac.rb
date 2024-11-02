class Unluac < Formula
  desc "A decompiler for Lua 5.x"
  homepage "https://sourceforge.net/projects/unluac"
  version "2023_12_24"
  url "https://sourceforge.net/projects/unluac/files/Unstable/unluac_#{version}.jar"
  sha256 "65fcab564745fd5155bae01cad03756efee14e4c60c35edcd277b07ce0d9b1e2"

  depends_on "openjdk"

  def install
    libexec.install "unluac_#{version}.jar"
    bin.write_jar_script libexec/"unluac_#{version}.jar", "unluac"
  end
end
