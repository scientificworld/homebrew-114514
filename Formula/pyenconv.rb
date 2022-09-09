class Pyenconv < Formula
  desc "Character encoding converter written in python."
  homepage "https://github.com/scientificworld/pyenconv"
  url "https://github.com/scientificworld/pyenconv/archive/refs/heads/master.zip"
  sha256 "fb1e854bfa8cb6764673a065ff26adac96d22d96a633983e65faa31bd5a1b579"
  license "DFDT"

  depends_on "python"
  uses_from_macos "make"

  def install
    system "make"
    bin.install "pyenconv"
  end

  def caveats
    <<~EOS
      This tool depends on cchardet.
      You can use "pip3 install cchardet" to install it.
    EOS
  end

  test do
    system "#{bin}/pyenconv", "-h"
  end
end
