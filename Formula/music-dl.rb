class MusicDL < Formula
  desc "Music Searcher and Downloader."
  homepage "https://github.com/guanguans/music-dl"
  url "https://github.com/guanguans/music-dl/archive/refs/tags/v3.1.6.tar.gz"
  sha256 "3e350fef00f96295e4b29e9316498698aaa051df269c0757a747c96c19c5fd0d"
  license "MIT"
  head "https://github.com/guanguans/music-dl.git"

  depends_on "php"

  def install
    bin.install "builds/music-dl"
  end

  test do
    system "#{bin}/music-dl", "--help"
  end
end
