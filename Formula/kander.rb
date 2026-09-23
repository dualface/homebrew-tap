class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.1/kander-darwin-arm64.tar.gz"
      sha256 "74363f814e4386cdd9db1dd6d67b766cea908c62d506db8084e5fd3f1f8a351b"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.1/kander-darwin-amd64.tar.gz"
      sha256 "702a92819bef7936666ea4779847e86590187ac3b41c8d004bd1dbbcdc79d8d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.1/kander-linux-arm64.tar.gz"
      sha256 "4ff462a48669be7947ea0865cfca6ccdf1322cbdf16495af19b44c2389a355f5"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.1/kander-linux-amd64.tar.gz"
      sha256 "3c81a7393ea03569068bab0a3f3131f96f9f29cbef0943a2716edd47b0e794cd"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.8.1", shell_output("#{bin}/kander version").strip
  end
end
