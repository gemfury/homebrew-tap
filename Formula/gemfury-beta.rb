class GemfuryBeta < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"
  url "https://github.com/gemfury/homebrew-tap/releases/download/v0.9.0.rc1/gemfury-0.9.0.rc1.tar.gz"
  sha256 "534e65eafee57ad0c867f8db0928df4ee3807b73febc63f446cc5587f1fcb88f"
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
