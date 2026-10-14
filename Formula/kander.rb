class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.5/kander-darwin-arm64.tar.gz"
      sha256 "adaa40c0e82a26ffd5c85dcc738b7347538290b73072efacd5cdf9e8fa2ecd0b"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.5/kander-darwin-amd64.tar.gz"
      sha256 "92cc3087d824a67ad26631da5757e010d92f72f9592f487128b20b21de2ab24a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.5/kander-linux-arm64.tar.gz"
      sha256 "23a68c6ab9b37156cf01bfd2dda1749c5612b917581c13026d39b7e3ec7d870b"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.5/kander-linux-amd64.tar.gz"
      sha256 "f8e08b0f3d07f00bf47f7c3416586d7d06a309fde6e2713a0880de5e464fc7e6"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.5", shell_output("#{bin}/kander version").strip
  end
end
