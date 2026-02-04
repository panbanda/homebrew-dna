class Dna < Formula
  desc "Truth artifact management CLI with vector search for AI agents"
  homepage "https://github.com/panbanda/dna"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.3/dna_0.3.3_aarch64-apple-darwin.tar.gz"
      sha256 "a4bdb2cb5beadc99c5184e49d1bf8090da0c53fea4032365f6e9f7613f94d62e"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.3/dna_0.3.3_x86_64-apple-darwin.tar.gz"
      sha256 "942ebb4342c5f63c6205515be7c6615ea6382cc7ac3ea6480c03b57f0158dc26"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.3/dna_0.3.3_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7668c588ed674ce1fa5d1cdb61218e738d50e81d92e860de23d541854a6a275c"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.3/dna_0.3.3_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "037f14c34e032782eef8c5887a9d36a26a03bb2b9b1de8e04ed096e91c427239"
    end
  end

  def install
    bin.install "dna"
  end

  test do
    system "#{bin}/dna", "--help"
  end
end
