class Cliproxyapiplus < Formula
  desc "CCS-maintained fork of CLIProxyAPIPlus"
  homepage "https://github.com/kaitranntt/CLIProxyAPIPlus"
  version "7.2.127-11"
  license "MIT"
  head "https://github.com/kaitranntt/CLIProxyAPIPlus.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/kaitranntt/CLIProxyAPIPlus/releases/download/v#{version}/CLIProxyAPIPlus_#{version}_darwin_aarch64_no-plugin.tar.gz"
    end
    on_intel do
      url "https://github.com/kaitranntt/CLIProxyAPIPlus/releases/download/v#{version}/CLIProxyAPIPlus_#{version}_darwin_amd64_no-plugin.tar.gz"
    end
  end

  conflicts_with "cliproxyapi"

  def install
    bin.install "cli-proxy-api-plus"
    chmod 0755, bin/"cli-proxy-api-plus"
  end

  service do
    run [opt_bin/"cli-proxy-api-plus", "--config", etc/"cliproxyapiplus.conf"]
    keep_alive true
  end
end
