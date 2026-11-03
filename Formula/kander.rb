class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.1.2/kander-darwin-arm64.tar.gz"
      sha256 "78c4e63bd97545f8a58271121e55cd19523bd22cf627501ca47ea7d21bf32ee3"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.1.2/kander-darwin-amd64.tar.gz"
      sha256 "fee48a6f4e889d939f3b929f7c67075e09c7873ebf60ed02822b1a18db8a5bae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.1.2/kander-linux-arm64.tar.gz"
      sha256 "20c311e18c7851cbf0a64c1c9d978faf8bbef93facd55529857713ae0de06af3"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.1.2/kander-linux-amd64.tar.gz"
      sha256 "7869af7f526f5897e099a06881bc9ebb3df226e419da792537f7bfa84e0c2483"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.1.2", shell_output("#{bin}/kander version").strip
  end
end
