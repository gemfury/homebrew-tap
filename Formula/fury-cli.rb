# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FuryCli < Formula
  desc "CLI For Gemfury Package Repository"
  homepage "https://gemfury.com/"
  version "0.20.0-rc.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gemfury/cli/releases/download/v0.20.0-rc.1/fury_0.20.0-rc.1_macOS_64bit.tar.gz"
      sha256 "ba5b299c537c3b853b084d11bd7fc2d61be0d14eec0f90c216008c3e6a8becf7"

      def install
        bin.install "fury"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gemfury/cli/releases/download/v0.20.0-rc.1/fury_0.20.0-rc.1_macOS_ARM64.tar.gz"
      sha256 "240981110b85855170312a75f3605aced71ff09b467caed8110ddcf929583e01"

      def install
        bin.install "fury"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gemfury/cli/releases/download/v0.20.0-rc.1/fury_0.20.0-rc.1_Linux_64bit.tar.gz"
      sha256 "e2890710b6b6a3e9ab7b49d7e8ec7c3a53f00bf1cf7ec0467487e55d6de4edc3"

      def install
        bin.install "fury"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gemfury/cli/releases/download/v0.20.0-rc.1/fury_0.20.0-rc.1_Linux_ARM64.tar.gz"
      sha256 "0284d5ce77fb0f96958b21c1ef26acc3a6601748c495d4df51e72177487ed912"

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
