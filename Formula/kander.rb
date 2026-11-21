class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.5.1/kander-darwin-arm64.tar.gz"
      sha256 "77ef07e10c7f1a630dd8b3632ccfe5fcdc1a131e1d3d8a1d356a86eddcb9e017"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.5.1/kander-darwin-amd64.tar.gz"
      sha256 "8c21ce51574b6f06c5931a40c91ea627e98e963a7bc0bc585d7d4bd855880784"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.5.1/kander-linux-arm64.tar.gz"
      sha256 "993c2d100c3cce30fe3ebbfed205e1252402b7f0bbf30d047ec5eb7dcf2188c6"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.5.1/kander-linux-amd64.tar.gz"
      sha256 "3315e8f4903e4ece0f8adbb2ce726d92ab89b23a530de851af4e79155ad787e8"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.5.1", shell_output("#{bin}/kander version").strip
  end
end
