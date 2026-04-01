class MusicDl < Formula
  version "6.5.2"
  desc "Music Searcher and Downloader."
  homepage "https://github.com/guanguans/music-dl"
  url "https://github.com/guanguans/music-dl/releases/download/#{version}/music-dl.phar"
  sha256 "6336684fbd3cf5c07c10d6307dfe91266c6c6a5c1bbd50ed43b939175955b8ce"
  license "MIT"
  head "https://github.com/guanguans/music-dl.git"

  depends_on "php"

  def install
    bin.install "music-dl.phar" => "music-dl"
  end

  test do
    system "#{bin}/music-dl", "--help"
  end
end
