# typed: false
# frozen_string_literal: true

class MakeCli < Formula
  desc "A command-line tool for Make automation platform"
  homepage "https://www.make.com"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-darwin-arm64.tar.gz"
      sha256 "36a39e0743deca7b779123a84ecc263df325be0ed5b47a870a563acbe80f47a3"

      def install
        bin.install "make-cli-darwin-arm64" => "make-cli"
      end
    end

    on_intel do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-darwin-amd64.tar.gz"
      sha256 "7562736f6eaa2937aeee3acd9410f0b96b5589d116a692b76ce1af61b8ac4d8f"

      def install
        bin.install "make-cli-darwin-amd64" => "make-cli"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-linux-arm64.tar.gz"
      sha256 "a2dae5d37b3153aff97405e06c7936fd7d008ff1a0a876fa5f7d234148f33072"

      def install
        bin.install "make-cli-linux-arm64" => "make-cli"
      end
    end

    on_intel do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-linux-amd64.tar.gz"
      sha256 "3bb7de01e3f4a01c2fdbb2d421c728a5848e25d60562abbbe3ea1efa45d6c11b"

      def install
        bin.install "make-cli-linux-amd64" => "make-cli"
      end
    end
  end

  test do
    assert_match "make-cli", shell_output("#{bin}/make-cli --help")
  end
end
