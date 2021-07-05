class Gemfury < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"

  stable do
    url "https://github.com/gemfury/gemfury/releases/download/v0.12.0/gemfury-0.12.0.tar.gz"
    sha256 "327f4bf0727edd92ea20c094813dcd31d2f48e60564729ded2644e1075740722"
  end

  head do
    url "https://github.com/gemfury/gemfury/releases/download/v0.12.0/gemfury-0.12.0.tar.gz"
    sha256 "327f4bf0727edd92ea20c094813dcd31d2f48e60564729ded2644e1075740722"
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
