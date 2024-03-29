# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jarvis < Formula
  desc "Onchain (EVM compatible) operation made easy"
  homepage "https://github.com/tranvictor/jarvis"
  version "0.0.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tranvictor/jarvis/releases/download/v0.0.29/jarvis_0.0.29_macOS_arm64.tar.gz"
      sha256 "10e54278bfa93826cbe4b2a95ebb8a6715635accd20a282f2d7c5b11698122c9"

      def install
        system "make", "jarvis" if build.head?
        bin.install "bin/jarvis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tranvictor/jarvis/releases/download/v0.0.29/jarvis_0.0.29_macOS_amd64.tar.gz"
      sha256 "70753eeebe47b0ede7f94bfb71c6185fb1af36c2969871f5d4673770634d1454"

      def install
        system "make", "jarvis" if build.head?
        bin.install "bin/jarvis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tranvictor/jarvis/releases/download/v0.0.29/jarvis_0.0.29_linux_arm64.tar.gz"
      sha256 "b37a7de7ee0b60638d478ab8f2bff90fa431967e5de2ca3d10203aea13cde030"

      def install
        system "make", "jarvis" if build.head?
        bin.install "bin/jarvis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tranvictor/jarvis/releases/download/v0.0.29/jarvis_0.0.29_linux_amd64.tar.gz"
      sha256 "2120f8c48aa0a96aeffa9ceaedc3a04fc0734735d30e0c0265c0cd4fc2b39540"

      def install
        system "make", "jarvis" if build.head?
        bin.install "bin/jarvis"
      end
    end
  end

  head do
    url "https://github.com/tranvictor/jarvis.git"
    depends_on "go"
  end

  test do
    help_text = shell_output("jarvis -h")
    assert_includes help_text, "Usage:"
  end
end
