class Dna < Formula
  desc "Truth artifact management CLI with vector search for AI agents"
  homepage "https://github.com/panbanda/dna"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.1.7/dna_0.1.7_aarch64-apple-darwin.tar.gz"
      sha256 "1d1d9479b644d46856f78651c0baac8b323ff1d6a202b6c3d8751561c355e27d"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.1.7/dna_0.1.7_x86_64-apple-darwin.tar.gz"
      sha256 "dfa4b68526c1b40e4c32985d2bf69a631766693ce0e27772b6b389a19900fd78"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.1.7/dna_0.1.7_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5e86bbd02703bf80945d7b90e6e0282fcd2f74b67dd48298a8b148755d623c0"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.1.7/dna_0.1.7_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f33243e2505aed2ef9f90a1d5e16fa1abd12f24d4382e5f624013d9f2848ffb"
    end
  end

  def install
    bin.install "dna"
  end

  test do
    system "#{bin}/dna", "--help"
  end
end
