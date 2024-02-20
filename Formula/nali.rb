class Nali < Formula
  version "0.8.1"
  homepage "https://github.com/zu1k/nali"

  on_macos do
    on_arm do
      url "https://github.com/zu1k/nali/releases/download/v#{version}/nali-darwin-arm64-v#{version}.gz"
      sha256 "a7fbc3fbbfa49fefa0f5c11e12c10146d33f4d0b641f759fe32b7093359f7271"
    end
    on_intel do
      url "https://github.com/zu1k/nali/releases/download/v#{version}/nali-darwin-amd64-v#{version}.gz"
      sha256 "a17d79855091d8ba3f1c6db1e8cffee127daaf8fd20838c5849b0e956c39d525"
    end
  end

  def install
    arch = Hardware::CPU.intel? ? "amd64" : Hardware::CPU.arch.to_s
    bin.install "nali-darwin-#{arch}-v#{version}" => "nali"
  end
end
