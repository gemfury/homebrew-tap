class Gemfury < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"
  url "https://github.com/gemfury/homebrew-tap/releases/download/v0.8.0/gemfury-0.8.0.tar.gz"
  sha256 "249dd00415cc5d46a2e617a87a4de7107b9f4818d076483948a8a59cafa29ab8"

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
