cask "clashx-meta" do
  version "v1.4.8"

  url "https://github.com/MetaCubeX/ClashX.Meta/releases/download/#{version}/ClashX.Meta.zip"
  name "ClashX.Meta"
  desc "A rule based proxy For Mac base on Clash Meta."
  homepage "https://github.com/MetaCubeX/ClashX.Meta"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "ClashX Meta.app"
end
