class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.6/kander-darwin-arm64.tar.gz"
      sha256 "17564eb72d2bc0b620df677963713253e85f9d010eaacf770f6aac11088e0510"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.6/kander-darwin-amd64.tar.gz"
      sha256 "65a2835ac57910488de65e5b529e2d29ae67dc991990471e5170a7731ca6b5f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.6/kander-linux-arm64.tar.gz"
      sha256 "d57ba1e7552b2d50d6bf600de55ea9cdc74c6b031be35ffff57219a47a76fbcd"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.6/kander-linux-amd64.tar.gz"
      sha256 "0a7605db137dac17032012c3ecb1a62d63a9c86e0397114c0ae60f4fa5c5cdc8"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.6", shell_output("#{bin}/kander version").strip
  end
end
