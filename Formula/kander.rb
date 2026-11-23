class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.5.3/kander-darwin-arm64.tar.gz"
      sha256 "6a40c29a22cb11fc1d57e3dba9101aab78af214f8eabeeda0d81c3a73c27290c"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.5.3/kander-darwin-amd64.tar.gz"
      sha256 "d0c6464b1e47b0799b2a3cf2a514b5bc5940ff6a0b47eb50968caecdf2795850"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.5.3/kander-linux-arm64.tar.gz"
      sha256 "221cb826a8df5c231d1cf5ced836b832841ef646b108de71cbc05eb89e1e76ba"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.5.3/kander-linux-amd64.tar.gz"
      sha256 "7045c331f3e91e47e98e0cce99d3a79869f79aa8ad18c54eaaca2fd0eb657ce6"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.5.3", shell_output("#{bin}/kander version").strip
  end
end
