class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.6.3/kander-darwin-arm64.tar.gz"
      sha256 "7c03ce38e43bfb073e73270ae7207485a91e8aeedbb0bf621288023dd4aa9609"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.6.3/kander-darwin-amd64.tar.gz"
      sha256 "1ea278c824d13630e8d49808e7e7df692e3ec62705194fe35260ba8620342185"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.6.3/kander-linux-arm64.tar.gz"
      sha256 "5c28d2132999aa49a960532eba5c83aefcc6f8c88cf63acda18fddc82d8b1bd2"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.6.3/kander-linux-amd64.tar.gz"
      sha256 "59766d98eb171cf5e65bcb44d464986afe3e61a5526b6eceac403f59ab324d9e"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.6.3", shell_output("#{bin}/kander version").strip
  end
end
