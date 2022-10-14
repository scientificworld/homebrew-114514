class Amule < Formula
  desc "aMule: The all-platform Mule"
  homepage "http://www.amule.org"
  version "2.3.3"
  url "https://nchc.dl.sourceforge.net/project/amule/aMule/#{version}/aMule-#{version}.tar.xz"
  sha256 "a647309642331f3e033fdf0196e7232cdc67f46739d12a0294be06885f70c8bd"
  license "GPL-2.0-or-later"
  head "https://github.com/amule-project/amule.git"

  depends_on "wxwidgets"
  depends_on "flex"
  depends_on "gettext"
  depends_on "libpng"
  depends_on "cryptopp"
  depends_on "libgd"
  depends_on "geoip"
  depends_on "libupnp"
  depends_on "pkg-config"
  depends_on "perl"
  uses_from_macos "make"
  uses_from_macos "zlib"
  uses_from_macos "bison"
  uses_from_macos "libiconv"

  patch :DATA

  def install
    ENV["LDFLAGS"] = "-L/opt/homebrew/lib"
    ENV["CPPFLAGS"] = "-I/opt/homebrew/include"
    ENV["CFLAGS"] = "-I/opt/homebrew/include"
    args = %W[
      --enable-amule-daemon
      --enable-amulecmd
      --enable-webserver
      --enable-amule-gui
      --enable-cas
      --enable-wxcas
      --enable-alc
      --enable-alcc
      --enable-xas
      --enable-fileview
      --enable-geoip
      --enable-optimize
      --enable-mmap
      --enable-ccache
    ]
    system "./configure", *args
    system "make"
    bin.install "src/amule"
    bin.install "src/amulecmd"
    bin.install "src/amuled"
    bin.install "src/amulegui"
    bin.install "src/ed2k"
    bin.install "src/utils/aLinkCreator/src/alc"
    bin.install "src/utils/aLinkCreator/src/alcc"
    bin.install "src/utils/cas/cas"
    bin.install "src/utils/fileview/mulefileview"
    bin.install "src/utils/wxCas/src/wxcas"
    bin.install "src/webserver/src/amuleweb"
  end
end
__END__
diff --git a/src/ExternalConnector.cpp b/src/ExternalConnector.cpp
index 683a10c..011b316 100644
--- a/src/ExternalConnector.cpp
+++ b/src/ExternalConnector.cpp
@@ -641,11 +641,11 @@ bool CaMuleExternalConnector::OnInit()
 	//
 	// OnInitCmdLine() is called from wxApp::OnInit() above,
 	// thus m_appname is already set.
-	rl_readline_name = m_appname;
+	rl_readline_name = const_cast<char *>(m_appname);
 
 	// Allow completion of our commands
 	theCommands = &m_commands;
-	rl_completion_entry_function = &command_completion;
+	rl_completion_entry_function = reinterpret_cast<Function *>(&command_completion);
 #endif
 
 	return retval;
