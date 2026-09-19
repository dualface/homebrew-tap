class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.7/kander-darwin-arm64.tar.gz"
      sha256 "da7286fe38778b7951b1d43a865568bf8151e1e75d946507fa107a210b4862c4"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.7/kander-darwin-amd64.tar.gz"
      sha256 "66860e8b50ef4a7282efe082698a33f8b81272d603e6a63382020f9f9f22bf7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.7/kander-linux-arm64.tar.gz"
      sha256 "ed1ad5511a3107d40eee390e9a70f5265195d62dd0e36bfb7b1cc3247a0ca1e4"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.7/kander-linux-amd64.tar.gz"
      sha256 "8c52fb3041bb801ec59f2a8840437300ba34cb936fe1d006f653399872e7781d"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.7", shell_output("#{bin}/kander version").strip
  end
end
