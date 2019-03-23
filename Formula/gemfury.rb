class Gemfury < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"
  url "https://github.com/gemfury/homebrew-tap/releases/download/v0.9.1/gemfury-0.9.1.tar.gz"
  sha256 "9e63d6127d4a2df65b8d441f18d15a0bde65a9ae730273266cf491e574b76720"

  devel do
    url "https://github.com/gemfury/gemfury/releases/download/v0.10.0-rc1/gemfury-0.10.0.rc1.tar.gz"
    sha256 "9de9fa6d3aa1dbb3ae6c559257731522b8864b68a871149dffb70528de5d23a0"
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
