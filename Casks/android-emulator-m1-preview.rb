cask "android-emulator-m1-preview" do
  version "0.3"
  sha256 "f8e0636d7b933e8cd76686caae2836049bf81fccb88ca214ed2580ec864f09c5"

  url "https://github.com/google/android-emulator-m1-preview/releases/download/#{version}/android-emulator-m1-preview.dmg"
  name "Android Emulator M1 Preview"
  homepage "https://github.com/google/android-emulator-m1-preview"

  deprecate! date: "2021-03-11", because: :discontinued

  app "Android Emulator.app"
end
