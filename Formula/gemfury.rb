class Gemfury < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"
  url "https://github.com/gemfury/homebrew-tap/releases/download/v0.9.1/gemfury-0.9.1.tar.gz"
  sha256 "9e63d6127d4a2df65b8d441f18d15a0bde65a9ae730273266cf491e574b76720"

  devel do
    url "https://github.com/gemfury/homebrew-tap/releases/download/v0.9.2.pre/gemfury-0.9.2.pre.tar.gz"
    sha256 "690e6225131fe074f69da726c8ef3beec89f0b2e1dd13acfee429f6565bede30"
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
