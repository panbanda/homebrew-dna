class Dna < Formula
  desc "Truth artifact management CLI with vector search for AI agents"
  homepage "https://github.com/panbanda/dna"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.4/dna_0.3.4_aarch64-apple-darwin.tar.gz"
      sha256 "bf890d2e71e90944ad632d14e421bca6c7aa66124a3fe997cb195a4d6ed82815"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.4/dna_0.3.4_x86_64-apple-darwin.tar.gz"
      sha256 "3e0a080615c9884db475a52e7a0d2e97f7904cd0ce77a8d8d0c7d497e6b831a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.4/dna_0.3.4_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d66378b0ca97c85648233ab6bc189b88fe3672fafb5a118bee947a01876deebe"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.4/dna_0.3.4_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "961b004c62c72c791a4ea4854038b5cc3ceefe75caa5d34146b7b05a1b3fea9b"
    end
  end

  def install
    bin.install "dna"
  end

  test do
    system "#{bin}/dna", "--help"
  end
end
