class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.5/kander-darwin-arm64.tar.gz"
      sha256 "ec18c42f413161003e4aaecac07c07a48962d52c0bdda8753c6d41a7639742d3"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.5/kander-darwin-amd64.tar.gz"
      sha256 "dca5e53c477b41a2ee40d84892ce245ece495875f5cd0cb0b0e1e44e28aeb921"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.5/kander-linux-arm64.tar.gz"
      sha256 "debe267be25b963991c308e3e495f8b9604ff42c45ce2fe20cbcc429755675a5"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.5/kander-linux-amd64.tar.gz"
      sha256 "8c91f3a8ffaa0988a88994fbed561383323017a1f7e22fb98ca478eafbf33058"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.8.5", shell_output("#{bin}/kander version").strip
  end
end
