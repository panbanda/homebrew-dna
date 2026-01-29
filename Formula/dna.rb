class Dna < Formula
  desc "Truth artifact management CLI with vector search for AI agents"
  homepage "https://github.com/panbanda/dna"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.2.0/dna_0.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "2b9d24bcaecdca1075bae3d294b6ce42764dda318893088c703f4f51c259020b"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.2.0/dna_0.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "647c15bc4bdce7b239009f3900367a58bcbdbda884bd43b25dd2648e96dca95f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.2.0/dna_0.2.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a5cf993c6912d4f1e199aae1de08d5df59dec2505b448a355d3c26d97b827e1"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.2.0/dna_0.2.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1a1b68554dec0d993e2cf1bb51385bc0c2af47e4967f6f70b32e49528544cd2"
    end
  end

  def install
    bin.install "dna"
  end

  test do
    system "#{bin}/dna", "--help"
  end
end
