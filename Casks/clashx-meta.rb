cask "clashx-meta" do
  version "1.2.6"
  sha256 "a12701dba65b63e701d6678e36935348b35e4934e8d0bd42301370b22b85a083"

  url "https://github.com/MetaCubeX/ClashX.Meta/releases/download/v#{version}/ClashX.Meta.zip"
  name "ClashX.Meta"
  desc "A rule based proxy For Mac base on Clash Meta."
  homepage "https://github.com/MetaCubeX/ClashX.Meta"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ClashX Meta.app"
end
