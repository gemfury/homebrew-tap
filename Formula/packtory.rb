class Packtory < Formula
  desc "An easy to use system packaging tool for your Ruby gems"
  homepage "https://gemfury.com"
  url "https://files.nlevel.io/packtory-0.1.2.tar.gz"
  sha256 "c97f97eecf213bd051284213ad4161926290813ea7ed476caf0eb43a73041cfd"

  def package_name
    "packtory"
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
