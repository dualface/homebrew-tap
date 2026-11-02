class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.1.0/kander-darwin-arm64.tar.gz"
      sha256 "5c00a5992d233a708c1ba256c9168f75c7fca01698969afb17939d182e285187"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.1.0/kander-darwin-amd64.tar.gz"
      sha256 "cc4b79d0e65ddf6b13be980c0a564043b2e61aea4d202ef75c209f568b901433"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.1.0/kander-linux-arm64.tar.gz"
      sha256 "fbadce97e4091aa0e4c6604f10acece6a3bbd076f8827bb829a45170df378486"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.1.0/kander-linux-amd64.tar.gz"
      sha256 "4a4c63323357f272fc2e9f79caf163f43382c4c0be642ebc7b53b7daa2cd9fff"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.1.0", shell_output("#{bin}/kander version").strip
  end
end
