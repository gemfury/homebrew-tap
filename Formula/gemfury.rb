class Gemfury < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"
  url "https://github.com/gemfury/homebrew-tap/releases/download/v0.8.0/gemfury-0.8.0.tar.gz"
  sha256 "96faf40a4204916d20806ea82ace0a0dc6b74812b8396773e1ead13f5bf62f5f"
  conflicts_with('gemfury-beta')

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
