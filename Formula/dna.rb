class Dna < Formula
  desc "Truth artifact management CLI with vector search for AI agents"
  homepage "https://github.com/panbanda/dna"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.0/dna_0.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "c611338006d5e69d7908731b99da594fe09eb9eb1207d0e4d296a5b6fcbb8936"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.0/dna_0.3.0_x86_64-apple-darwin.tar.gz"
      sha256 "066e7078165ad402fdfe4d25fb43003d4448d6744c6cad6d13f56fa9fe5447d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.0/dna_0.3.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6767a0009362f2e21919ccb46642faa512c30d53567bb4f0d150dee5fbff30f9"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.0/dna_0.3.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "13920719d2bc580f6cf21eb3e5450857d87bb756d41d1b5f93270076d17ebcae"
    end
  end

  def install
    bin.install "dna"
  end

  test do
    system "#{bin}/dna", "--help"
  end
end
