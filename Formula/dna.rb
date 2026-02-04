class Dna < Formula
  desc "Truth artifact management CLI with vector search for AI agents"
  homepage "https://github.com/panbanda/dna"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.1/dna_0.3.1_aarch64-apple-darwin.tar.gz"
      sha256 "6025e9b9e0c86b4047faf649b45a68925e782aadc54346a177e4b67580137b29"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.1/dna_0.3.1_x86_64-apple-darwin.tar.gz"
      sha256 "c1fc06e2fb1e88546f19b63c974db5f34ed5d24736cd6140ce2997e69709489a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.1/dna_0.3.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47ea8dbcb8f76ae4fc28e014f3bf9453a2963d6ae9d86f4eb0b68d0f2387c338"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.1/dna_0.3.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "832f58b797558d131c39e9c36e1ca424ad5d5ef6009d02278e5f96b067deb1eb"
    end
  end

  def install
    bin.install "dna"
  end

  test do
    system "#{bin}/dna", "--help"
  end
end
