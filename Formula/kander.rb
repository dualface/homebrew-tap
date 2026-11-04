class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.2.0/kander-darwin-arm64.tar.gz"
      sha256 "3ba03609ad842201279d1451f1ea4aa501ee58d6df680f2a07e11e5f56c8aefc"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.2.0/kander-darwin-amd64.tar.gz"
      sha256 "dafbe8cde104bc3fb152824d6aee4b4b3f79d134a98eb00f70ac50654d336cde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.2.0/kander-linux-arm64.tar.gz"
      sha256 "b7cefefe326a00e55daa59769dc263e0be8c7ee72a97fcb3655dada802bb5059"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.2.0/kander-linux-amd64.tar.gz"
      sha256 "228457758a99af7d4008685103842c8e39d6a0a34ab9f1b0cc7ecd04f6abac26"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.2.0", shell_output("#{bin}/kander version").strip
  end
end
