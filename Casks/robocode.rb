cask "robocode" do
  version "1.9.5.5"
  sha256 "439f8225bd5f32147218d6c31e2405f1d0e373ab526468c66cbd8c7ab8ba04c2"

  url "https://downloads.sourceforge.net/project/robocode/robocode/#{version}/robocode-#{version}-setup.jar"
  name "Robocode"
  desc "Build the best - destroy the rest!"
  homepage "https://robocode.sourceforge.io"

  container type: :zip

  binary "#{staged_path}/robocode.sh", target: "robocode"

  caveats do
    depends_on_java "8+"
  end
end
