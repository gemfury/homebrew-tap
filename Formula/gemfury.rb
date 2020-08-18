class Gemfury < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"

  stable do
    url "https://github.com/gemfury/gemfury/releases/download/v0.11.0/gemfury-0.11.0.tar.gz"
    sha256 "6e82b6da5bd6e712d23e7bf51c023a1b62758403a87628fd919d04aafcf195f8"
  end

  head do
    url "https://github.com/gemfury/gemfury/releases/download/v0.12.0-rc2/gemfury-0.12.0.rc2.tar.gz"
    sha256 "549935fc7da0fcc4aa4ba578cf0103c7a5a811eec7f573fbc77f8659a1193dd8"
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
