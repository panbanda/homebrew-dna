class Dna < Formula
  desc "Truth artifact management CLI with vector search for AI agents"
  homepage "https://github.com/panbanda/dna"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.1.5/dna_0.1.5_aarch64-apple-darwin.tar.gz"
      sha256 "cab5a04efd78deb34ca9c0bb15abbd65dc2b0144160f18d2789c22d086f502dd"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.1.5/dna_0.1.5_x86_64-apple-darwin.tar.gz"
      sha256 "b17ee16be4c033b855da9ae6417223262b1eb481804ea7047eb303179d51efe9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.1.5/dna_0.1.5_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d69536d295916900daad59610d38c9632015d05949be7673a6e37cc3ff6da512"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.1.5/dna_0.1.5_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b40109f6d596e7d4ee5d21155bcc0bcc598a560f19d4b4cc6aefc6041a216199"
    end
  end

  def install
    bin.install "dna"
  end

  test do
    system "#{bin}/dna", "--help"
  end
end
