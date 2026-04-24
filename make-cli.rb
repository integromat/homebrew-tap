# typed: false
# frozen_string_literal: true

class MakeCli < Formula
  desc "A command-line tool for Make automation platform"
  homepage "https://www.make.com"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-darwin-arm64.tar.gz"
      sha256 "fd0316807f73c3640a89d747dd3b8e022fd651562a829c9f958ec469201bf742"

      def install
        bin.install "make-cli-darwin-arm64" => "make-cli"
      end
    end

    on_intel do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-darwin-amd64.tar.gz"
      sha256 "8a9bb29fc7efae38f2ce70b4abbbb6cf293244faba445c9810f1f9cffb1cc1bd"

      def install
        bin.install "make-cli-darwin-amd64" => "make-cli"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-linux-arm64.tar.gz"
      sha256 "f6e5030df6a069278868cdfc8e43c6730ddf11d1f8d3babf5095175808bfabcf"

      def install
        bin.install "make-cli-linux-arm64" => "make-cli"
      end
    end

    on_intel do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-linux-amd64.tar.gz"
      sha256 "ca0ef36dffdb3afd94bbdd85b6a24ab70d9a5d8705a1955b1b1603e4cca9a9bd"

      def install
        bin.install "make-cli-linux-amd64" => "make-cli"
      end
    end
  end

  test do
    assert_match "make-cli", shell_output("#{bin}/make-cli --help")
  end
end
