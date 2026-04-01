cask "robocode" do
  version "1.10.1"
  sha256 "ce8add965b3f230e71a5d47bd5020e7d62cd902e2b790bff257f04fe515974e4"

  url "https://downloads.sourceforge.net/project/robocode/robocode/#{version}/robocode-#{version}-setup.jar"
  name "Robocode"
  desc "Build the best - destroy the rest!"
  homepage "https://robocode.sourceforge.io"

  container type: :zip

  shimscript = "#{staged_path}/robocode.wrapper.sh"
  binary shimscript, target: "robocode"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      cd "$(dirname "$(readlink -n "${0}")")" && \
        ./robocode.sh
    EOS
  end

  postflight do
    FileUtils.chmod "+x", "#{staged_path}/robocode.sh"
    FileUtils.chmod "+x", "#{staged_path}/set_java_options.sh"
    FileUtils.chmod "+x", "#{staged_path}/meleerumble.sh"
    FileUtils.chmod "+x", "#{staged_path}/roborumble.sh"
    FileUtils.chmod "+x", "#{staged_path}/teamrumble.sh"
    FileUtils.chmod "+x", "#{staged_path}/twinduel.sh"
  end

  caveats do
    depends_on_java "8+"
  end
end
