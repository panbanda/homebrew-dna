class Dna < Formula
  desc "Truth artifact management CLI with vector search for AI agents"
  homepage "https://github.com/panbanda/dna"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.2.1/dna_0.2.1_aarch64-apple-darwin.tar.gz"
      sha256 "237318abac78fa41c3b14f5e1c3d1005ad122524f080ffd834e24921c18e4490"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.2.1/dna_0.2.1_x86_64-apple-darwin.tar.gz"
      sha256 "ccdcba449c3a8acc99db880864551429d1f37902ddb0102534d3998298f779f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.2.1/dna_0.2.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc2c7d43e0a0a83f2e7696d6cd4b5863f5e80c06a7d44c2ba89d899c9e325c0b"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.2.1/dna_0.2.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a141ea6a1bf629277013dba129a074ea84bd316efd1f437831f025db4261ccd8"
    end
  end

  def install
    bin.install "dna"
  end

  test do
    system "#{bin}/dna", "--help"
  end
end
