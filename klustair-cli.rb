# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KlustairCli < Formula
  desc "Scan all images in your Kubernetes cluster with Trivy and check your configuration with Kubeaudit"
  homepage "https://github.com/klustair/klustair-cli"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/klustair/klustair-cli/releases/download/v0.8.1/klustair-cli_0.8.1_Darwin_x86_64.tar.gz"
      sha256 "a921647c7550891d2111af8ce5ea1f4a69bf770658c590e079fa914b86586916"

      def install
        bin.install "klustair-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/klustair/klustair-cli/releases/download/v0.8.1/klustair-cli_0.8.1_Darwin_arm64.tar.gz"
      sha256 "8c56639aaf256c8d356d109c5bb7ae115b3e9cdbad0b62f0b002775ec1d2b2c0"

      def install
        bin.install "klustair-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/klustair/klustair-cli/releases/download/v0.8.1/klustair-cli_0.8.1_Linux_arm64.tar.gz"
      sha256 "ed7ea0bf5e52b6039b8d69000f820fb0ecc15e472ce0643a94adaada10dde9b0"

      def install
        bin.install "klustair-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/klustair/klustair-cli/releases/download/v0.8.1/klustair-cli_0.8.1_Linux_x86_64.tar.gz"
      sha256 "ac5319518a94382741784bdd41a6c02ecb50e13ba8c234c05bde01c1e2154530"

      def install
        bin.install "klustair-cli"
      end
    end
  end

  test do
    system "#{bin}/klustair-cli", "--version"
  end
end
