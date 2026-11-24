class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.6.1/kander-darwin-arm64.tar.gz"
      sha256 "b034d629201938416f4be248a3063f6214a14541c63a223a466de0d6037421f3"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.6.1/kander-darwin-amd64.tar.gz"
      sha256 "e6e5d95b840c92c073becb198933c7ec7317d8d673e374f49ac2ab4088486e92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.6.1/kander-linux-arm64.tar.gz"
      sha256 "8c9c6704c581f4f9529a638a5c2733802e0940b4127c7f754c6784015da496f0"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.6.1/kander-linux-amd64.tar.gz"
      sha256 "34debfcdf0304231346cf40aaffd24a0b0ac1da04cf1256370c384b445477b74"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.6.1", shell_output("#{bin}/kander version").strip
  end
end
