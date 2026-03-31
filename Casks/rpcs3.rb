cask "rpcs3" do
  name "RPCS3"
  desc "PlayStation 3 emulator and debugger"
  homepage "https://rpcs3.net"

  version "0.0.40-19143,122ccca50e3508905aff79200e5ada12308275eb"
  on_arm do
    url "https://github.com/RPCS3/rpcs3-binaries-mac-arm64/releases/download/build-#{version.csv.second}/rpcs3-v#{version.csv.first}-#{version.csv.second[0, 8]}_macos_aarch64.7z"
    sha256 "ef30820a9d23dcb2f6e35f482a211f91e9b8d5272cbbde166246f196ada0042e"
  end
  on_intel do
    url "https://github.com/RPCS3/rpcs3-binaries-mac/releases/download/build-#{version.csv.second}/rpcs3-v#{version.csv.first}-#{version.csv.second[0, 8]}_macos.7z"
    sha256 "557722a99b20f40189d05a29195ca6c17acba194c44795f760fc06f90984edb5"
  end

  app "RPCS3.app"
end
