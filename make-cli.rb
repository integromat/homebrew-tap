# typed: false
# frozen_string_literal: true

class MakeCLI < Formula
  desc "A command-line tool for Make automation platform"
  homepage "https://www.make.com"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-darwin-arm64.tar.gz"
      sha256 "7aa3ecae0f99749a9afba317d0a9b3763b03ebd2b5404730fda8e76a5cd9c407"

      def install
        bin.install "make-cli-darwin-arm64" => "make-cli"
      end
    end

    on_intel do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-darwin-amd64.tar.gz"
      sha256 "e8728a5564aa6407fa114f3aa0e01b213092bcc4c2287383d3e00db1192915a3"

      def install
        bin.install "make-cli-darwin-amd64" => "make-cli"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-linux-arm64.tar.gz"
      sha256 "68ae4100fd2b794e5cdc32774e9282121a6a39e2d1dfa3ff39e4eed6dcf65fe3"

      def install
        bin.install "make-cli-linux-arm64" => "make-cli"
      end
    end

    on_intel do
      url "https://github.com/integromat/make-cli/releases/download/v#{version}/make-cli-linux-amd64.tar.gz"
      sha256 "d92f73d68cccc37e43ff6a2236ace5c33b4032be74b82d1e99b7c63f61b15b96"

      def install
        bin.install "make-cli-linux-amd64" => "make-cli"
      end
    end
  end

  test do
    assert_match "make-cli", shell_output("#{bin}/make-cli --help")
  end
end
