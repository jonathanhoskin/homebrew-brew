class Gotunl < Formula
  desc "Command-line client for Pritunl written in Go"
  homepage "https://github.com/cghdev/gotunl"
  version "1.2.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cghdev/gotunl/releases/download/1.2.2/gotunl-darwin-amd64.zip"
    sha256 "5fb3a0124f80c89ea7460df58180160866b96e28656d7f1d74531b45e06ea2ff"
  end

  def install
    bin.install "gotunl"
  end

  test do
    system "#{bin}/gotunl", "-v"
  end
end
