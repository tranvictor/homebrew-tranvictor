# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jarvis < Formula
  desc "Onchain (EVM compatible) operation made easy"
  homepage "https://github.com/tranvictor/jarvis"
  version "0.0.30"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tranvictor/jarvis/releases/download/v0.0.30/jarvis_0.0.30_macOS_arm64.tar.gz"
      sha256 "2259ff617f8458ee83d6549f33769bd189ac3a1b56e65d9462c7946e299bd8dd"

      def install
        system "make", "jarvis" if build.head?
        bin.install "bin/jarvis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tranvictor/jarvis/releases/download/v0.0.30/jarvis_0.0.30_macOS_amd64.tar.gz"
      sha256 "bf6265b16fff1ba8f07e7c45bf44aa1ca291f41de5b35bbd4bfd675bb54dab85"

      def install
        system "make", "jarvis" if build.head?
        bin.install "bin/jarvis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tranvictor/jarvis/releases/download/v0.0.30/jarvis_0.0.30_linux_arm64.tar.gz"
      sha256 "8402d12fbd6de4fee5c8b848456a181cd0c1048d13a11c4ba508f5fac1b91e11"

      def install
        system "make", "jarvis" if build.head?
        bin.install "bin/jarvis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tranvictor/jarvis/releases/download/v0.0.30/jarvis_0.0.30_linux_amd64.tar.gz"
      sha256 "9dc1a10e3e49ebfc98c8fa87df060f9da77ee09d0b4615aff881c8c9af02b8e1"

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
