class Dna < Formula
  desc "Truth artifact management CLI with vector search for AI agents"
  homepage "https://github.com/panbanda/dna"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.1.6/dna_0.1.6_aarch64-apple-darwin.tar.gz"
      sha256 "a8346e4df9f99dce5625101258868670a5dbd93f611ddfebb11c4d766407bd30"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.1.6/dna_0.1.6_x86_64-apple-darwin.tar.gz"
      sha256 "7220ec53ae6e77a51a9d1b85d35a1b695daadd6f3c9677bf0f889e158ef4164c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.1.6/dna_0.1.6_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c444e249ad733eaeb4fd79710b4e2f6b9eb54d8120e870fb53a3b83170d00db"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.1.6/dna_0.1.6_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1bd8d277dbb471cc29b6dbc2eaabd1a22322cba0ea35bb841457944b21104070"
    end
  end

  def install
    bin.install "dna"
  end

  test do
    system "#{bin}/dna", "--help"
  end
end
