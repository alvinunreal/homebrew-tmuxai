# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tmuxai < Formula
  desc "AI-Powered, Non-Intrusive Terminal Assistant"
  homepage "https://tmuxai.dev/"
  version "1.0.3"

  depends_on "tmux"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alvinunreal/tmuxai/releases/download/v1.0.3/tmuxai_Darwin_amd64.tar.gz"
      sha256 "41e880247972f86874aef4e60a77db93e2c2b47d857f1088b856af8e98f20d9d"

      def install
        bin.install "tmuxai"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/alvinunreal/tmuxai/releases/download/v1.0.3/tmuxai_Darwin_arm64.tar.gz"
      sha256 "ff40f1c4605933507c8f65e3a694756740cc5b65b264457f9f454f1d9f00f8d9"

      def install
        bin.install "tmuxai"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/alvinunreal/tmuxai/releases/download/v1.0.3/tmuxai_Linux_amd64.tar.gz"
      sha256 "916b390a283d415f9d303fd705cc162402ed071d616dbe7620ea683b49c28a4e"
      def install
        bin.install "tmuxai"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/alvinunreal/tmuxai/releases/download/v1.0.3/tmuxai_Linux_arm64.tar.gz"
      sha256 "58770cf1f98badf0635e7f9ad05fbe31dde52557d20294a3a4fa01abcd1554eb"
      def install
        bin.install "tmuxai"
      end
    end
  end

  test do
    system "tmuxai version"
  end
end
