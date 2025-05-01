cask "robocode" do
  version "1.9.5.5"
  sha256 "439f8225bd5f32147218d6c31e2405f1d0e373ab526468c66cbd8c7ab8ba04c2"

  url "https://downloads.sourceforge.net/project/robocode/robocode/#{version}/robocode-#{version}-setup.jar"
  name "Robocode"
  desc "Build the best - destroy the rest!"
  homepage "https://robocode.sourceforge.io"

  container type: :zip

  shimscript = "#{staged_path}/robocode.wrapper.sh"
  binary shimscript, target: "robocode"

  postflight do
    FileUtils.chmod "+x", "#{staged_path}/robocode.sh"
    File.write shimscript, <<~EOS
      #!/bin/sh
      cd "$(dirname "$(readlink -n "${0}")")" && \
        ./robocode.sh
    EOS
  end

  caveats do
    depends_on_java "8+"
  end
end
