class Gemfury < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"
  url "https://github.com/gemfury/homebrew-tap/releases/download/v0.8.0/gemfury-0.8.0.tar.gz"
  sha256 "96faf40a4204916d20806ea82ace0a0dc6b74812b8396773e1ead13f5bf62f5f"

  devel do
    url "https://github.com/gemfury/homebrew-tap/releases/download/devel/gemfury-0.9.0.rc1.tar.gz"
    sha256 "b1398c10807e29883912a7dbf20a4bc84125ebe076ff221440487cba41f6015b"
  end

  def package_name
    "gemfury"
  end

  def install
    prefix.install Dir["*"]

    install_script = "%s/%s/packtory_tools/after_install_script" % [ prefix, package_name ]
    system(install_script) if File.exist?(install_script)

    true
  end

  test do
    true
  end
end
