cask "robocode" do
  version "1.9.5.5"

  url "https://downloads.sourceforge.net/project/robocode/robocode/#{version}/robocode-#{version}-setup.jar"
  name "Robocode"
  desc "Build the best - destroy the rest!"
  homepage "https://robocode.sourceforge.io"

  binary "#{staged_path}/robocode.sh", target: "robocode"

  caveats do
    depends_on_java "16+"
  end
end
