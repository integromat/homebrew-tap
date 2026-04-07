# typed: false
# frozen_string_literal: true

class MakeCli < Formula
  desc "A command-line tool for Make automation platform"
  homepage "https://www.make.com"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-darwin-arm64.tar.gz"
      sha256 "cab949d421b54707364c68a12690443c2278741b2450fb38b2141e658fc44ca9"

      def install
        bin.install "make-cli-darwin-arm64" => "make-cli"
      end
    end

    on_intel do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-darwin-amd64.tar.gz"
      sha256 "ab59e302d1a730f8dd40eb8f0b2272db77a195c10ebb94e44d2ab8722d8ebe76"

      def install
        bin.install "make-cli-darwin-amd64" => "make-cli"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-linux-arm64.tar.gz"
      sha256 "b01567821e47337302c91f5fc7242a63688bb64807c397a8f55cf59667e8d70e"

      def install
        bin.install "make-cli-linux-arm64" => "make-cli"
      end
    end

    on_intel do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-linux-amd64.tar.gz"
      sha256 "fb2ab29b9bb8a22c37cc29520c7e821ea004868561f797d595759c9febd979c0"

      def install
        bin.install "make-cli-linux-amd64" => "make-cli"
      end
    end
  end

  test do
    assert_match "make-cli", shell_output("#{bin}/make-cli --help")
  end
end
