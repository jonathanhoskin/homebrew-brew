class Gotun < Formula

  desc "gotunl is a command line client for Pritunl written in Go."
  homepage "https://github.com/cghdev/gotunl"
  version "1.2.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cghdev/gotunl/releases/download/1.2.2/gotunl-darwin-amd64.zip"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cghdev/gotunl/releases/download/1.2.2/gotunl-linux-amd64.zip"
  end

  def install
    bin.install "gotunl"
  end

  test do
    system "#{bin}/gotunl -v"
  end

end
