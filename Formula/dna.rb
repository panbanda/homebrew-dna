class Dna < Formula
  desc "Truth artifact management CLI with vector search for AI agents"
  homepage "https://github.com/panbanda/dna"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.2/dna_0.3.2_aarch64-apple-darwin.tar.gz"
      sha256 "1a5ceaddd5ef13d36d444b7bbd11bf089f8ff81e7533fa3c85b0c2ed828d87ff"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.2/dna_0.3.2_x86_64-apple-darwin.tar.gz"
      sha256 "233a52326d9c0e5c74c790345159927fcf73fdfde76a0d6b8bcff6ef82f386c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.2/dna_0.3.2_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58409c1ba5a127b6abcd90571376e56459a22234ff4236df88b395f2f2e5bec9"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.2/dna_0.3.2_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7550418ceca8bbb24208570047af7c33871e8c744620241b7ee21c716499d37d"
    end
  end

  def install
    bin.install "dna"
  end

  test do
    system "#{bin}/dna", "--help"
  end
end
