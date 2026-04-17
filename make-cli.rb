# typed: false
# frozen_string_literal: true

class MakeCli < Formula
  desc "A command-line tool for Make automation platform"
  homepage "https://www.make.com"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-darwin-arm64.tar.gz"
      sha256 "18dd4c8345095d80c4019d022caa68aa9901e97d5f90b4109340e6c68bfaa7c4"

      def install
        bin.install "make-cli-darwin-arm64" => "make-cli"
      end
    end

    on_intel do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-darwin-amd64.tar.gz"
      sha256 "73575e64f5d11308524358e92a5fb2d038999370d81e0740c29fc0053a472449"

      def install
        bin.install "make-cli-darwin-amd64" => "make-cli"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-linux-arm64.tar.gz"
      sha256 "2b868a570d1c5de9b0aee83749b1ab5624aecfc7686798fb38aace709fdd4cd8"

      def install
        bin.install "make-cli-linux-arm64" => "make-cli"
      end
    end

    on_intel do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-linux-amd64.tar.gz"
      sha256 "54b68c0e8fb24fe26623e86a9c5357f335f674c1601b44f4423d3fa7d545d850"

      def install
        bin.install "make-cli-linux-amd64" => "make-cli"
      end
    end
  end

  test do
    assert_match "make-cli", shell_output("#{bin}/make-cli --help")
  end
end
