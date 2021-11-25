# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FuryCli < Formula
  desc "CLI For Gemfury Package Repository"
  homepage "https://gemfury.com/"
  version "0.20.0-alpha.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gemfury/cli/releases/download/v0.20.0-alpha.6/fury_0.20.0-alpha.6_macOS_ARM64.tar.gz"
      sha256 "a948c17d9fedc3914a80a4ab8f91d4a260fb653e58f818fb798a92f6236d21b3"

      def install
        bin.install "fury"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gemfury/cli/releases/download/v0.20.0-alpha.6/fury_0.20.0-alpha.6_macOS_64bit.tar.gz"
      sha256 "cb96ce1a9c418526acab87c97db8361638a0e82d82bd740980d5ab43e8c95f47"

      def install
        bin.install "fury"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gemfury/cli/releases/download/v0.20.0-alpha.6/fury_0.20.0-alpha.6_Linux_64bit.tar.gz"
      sha256 "bc4970cc9441cc585a9091b47984c36d9575355782d61acecf9e50040a92d3a2"

      def install
        bin.install "fury"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gemfury/cli/releases/download/v0.20.0-alpha.6/fury_0.20.0-alpha.6_Linux_ARM64.tar.gz"
      sha256 "b37edf211f21fe2c16df6a3c3f5e38b9184915e69954d4bcb4642edb0e5da954"

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
