class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.8.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.6/kander-darwin-arm64.tar.gz"
      sha256 "0929660e168924617c5edc0663b9094d29ab8d62eb2324f88163cd3a68c47c97"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.6/kander-darwin-amd64.tar.gz"
      sha256 "b2dc5e95aa31591a895c7c80c23bb00c817154dd62368a64d2895d00b7d1bfe0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.6/kander-linux-arm64.tar.gz"
      sha256 "b053dd58c067d163ba25e45f83dd0cbb65fa23b4a66d6d554fda2e616a389c5e"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.6/kander-linux-amd64.tar.gz"
      sha256 "5e119a757936432714496417838fa668577a89699516c5c7581e56767f8f29ef"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.8.6", shell_output("#{bin}/kander version").strip
  end
end
