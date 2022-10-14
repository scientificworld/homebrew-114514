class Cryptopp < Formula
  desc "A free C++ class library of cryptographic schemes"
  homepage "https://cryptopp.com"
  url "https://cryptopp.com/cryptopp870.zip"
  mirror "https://github.com/weidai11/cryptopp/releases/download/CRYPTOPP_8_7_0/cryptopp870.zip"
  version "8.7.0"
  # Haven't found a way to dynamically generate url by version, hardcode it first.

  def install
    system "make"
    lib.install "libcryptopp.a"
    prefix.install "cryptest.exe"
    include.install Dir["*.h"]
    include.install Dir["*.cpp"]
  end

  test do
    (testpath/"test.cpp").write <<~EOS
      #include <cryptopp/sha.h>
      #include <string>
      using namespace CryptoPP;
      using namespace std;
      int main()
      {
        byte digest[SHA1::DIGESTSIZE];
        string data = "Hello World!";
        SHA1().CalculateDigest(digest, (byte*) data.c_str(), data.length());
        return 0;
      }
    EOS
    system ENV.cxx, "test.cpp", "-L#{lib}", "-lcryptopp", "-o", "test"
    system "./test"
  end
end
