class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.6.2/kander-darwin-arm64.tar.gz"
      sha256 "22c8d47d1ba06290b499caa551a5637ab8acd3c1904f17ffe173554b4c5611e9"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.6.2/kander-darwin-amd64.tar.gz"
      sha256 "be35367fc376a993102b33203e7f6ed309a0ca8fdc4b7d84cb429febc81a5059"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.6.2/kander-linux-arm64.tar.gz"
      sha256 "70bb4fd61006d5eaae415d05d8829e04ad2ae1240be4e52c51fd06708282fca2"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.6.2/kander-linux-amd64.tar.gz"
      sha256 "d7d43fc5cfe80b5702ca7bb65c8ff72efdab1b3f2a1f44246b9fabb25dabb979"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.6.2", shell_output("#{bin}/kander version").strip
  end
end
