class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.9/kander-darwin-arm64.tar.gz"
      sha256 "510a631dd06f52889312a8522d20f8e5ca4922db9e90d8ff1dc8d770098607f6"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.9/kander-darwin-amd64.tar.gz"
      sha256 "23c7055b2f71c76b6ea91c9129d4c4ecc1802692386e7b4c8d46469983890c7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.9/kander-linux-arm64.tar.gz"
      sha256 "b5c8c7c9a700425d0f1e221ab62b92673842ed6dbd50b3ea74cdb5432bcf0ad8"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.9/kander-linux-amd64.tar.gz"
      sha256 "914aadf4d8e1f92f381585e9f3fe8140c6f7f8caff18b864b106e702df22239d"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.9", shell_output("#{bin}/kander version").strip
  end
end
