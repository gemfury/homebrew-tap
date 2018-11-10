class GemfuryBeta < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"
  url "https://github.com/gemfury/homebrew-tap/releases/download/v0.9.0.rc1/gemfury-beta-0.9.0.rc1.tar.gz"
  sha256 "02b5ad6d537ba8a43d151b920c94b6065864632debfebb225b2d80daec4c9443"
  conflicts_with('gemfury')

  def package_name
    "gemfury-beta"
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
