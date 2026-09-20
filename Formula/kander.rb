class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.13/kander-darwin-arm64.tar.gz"
      sha256 "67f8492ce9346c77cf6568ff0d7e83239a86c0ee334439aa790959fd2251ea47"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.13/kander-darwin-amd64.tar.gz"
      sha256 "b411909b708de18bf7981e9c677e3cd0e2198c16e448a51a3b36361fde8a53f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.13/kander-linux-arm64.tar.gz"
      sha256 "61300a541db79ae63f39b3fdadcc2704a65c95bac0859128e9669770dd09b9ed"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.13/kander-linux-amd64.tar.gz"
      sha256 "30a233bea831abe0921d7313116ba466fa6d12c33ad137803a3f2ee0cfa05a8c"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.13", shell_output("#{bin}/kander version").strip
  end
end
