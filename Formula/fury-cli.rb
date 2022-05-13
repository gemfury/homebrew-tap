# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FuryCli < Formula
  desc "CLI For Gemfury Package Repository"
  homepage "https://gemfury.com/"
  version "0.20.0-beta.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gemfury/cli/releases/download/v0.20.0-beta.3/fury_0.20.0-beta.3_macOS_ARM64.tar.gz"
      sha256 "bf2550c0637d338f38ad705298a2d497c7a9e338b92051f8e80c7b0311e2929c"

      def install
        bin.install "fury"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gemfury/cli/releases/download/v0.20.0-beta.3/fury_0.20.0-beta.3_macOS_64bit.tar.gz"
      sha256 "ebff47137c5327602589249233eee2b41d3e3573a7a2143365b994444b75eca8"

      def install
        bin.install "fury"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gemfury/cli/releases/download/v0.20.0-beta.3/fury_0.20.0-beta.3_Linux_64bit.tar.gz"
      sha256 "4bbb05f55a5bbb26ec58adf26baf01ad6b1aeef4b55b736d9f01051e5f5af4ee"

      def install
        bin.install "fury"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gemfury/cli/releases/download/v0.20.0-beta.3/fury_0.20.0-beta.3_Linux_ARM64.tar.gz"
      sha256 "4c23ca6f49f255e922fb9834b6beb43c8fedc7a33677db1c22694cac8a0f6826"

      def install
        bin.install "fury"
      end
    end
  end

  conflicts_with "gemfury"

  test do
    system "#{bin}/fury --version"
  end
end
