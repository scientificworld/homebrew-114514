class Naiveproxy < Formula
  version "138.0.7204.35-1"
  desc "Make a fortune quietly"
  homepage "https://github.com/klzgrad/naiveproxy"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/klzgrad/naiveproxy/releases/download/v#{version}/naiveproxy-v#{version}-mac-arm64.tar.xz"
    end
    on_intel do
      url "https://github.com/klzgrad/naiveproxy/releases/download/v#{version}/naiveproxy-v#{version}-mac-x64.tar.xz"
    end
  end

  def install
    bin.install "naive"
    pkgetc.install "config.json"
  end

  service do
    run [opt_bin/"naive", pkgetc/"config.json"]
  end
end
