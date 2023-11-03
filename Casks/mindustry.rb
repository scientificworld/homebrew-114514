cask "mindustry" do
  version "v146"
  sha256 "3ab0e46c3cbdc863529ba05e804847ef00e3dbdb4567b5c27c5e6dce071b93f9"

  url "https://github.com/Anuken/Mindustry/releases/download/#{version}/Mindustry.jar",
      verified: "https://github.com/Anuken/Mindustry"
  name "Mindustry"
  desc "The automation tower defense RTS"
  homepage "https://anuke.itch.io/mindustry"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/mindustry.wrapper.sh"
  binary shimscript, target: "mindustry"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      cd "$(dirname "$(readlink -n "${0}")")" && \
        java -jar Mindustry.jar "$@"
    EOS
  end

  caveats do
    depends_on_java "16+"
  end
end
