class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.2/kander-darwin-arm64.tar.gz"
      sha256 "bf993d34424f9a64acf40ed93b00f1934d3618a2e3dff7ee5526247cf885905d"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.2/kander-darwin-amd64.tar.gz"
      sha256 "625a51b858d0062953f6fd95940604139659e7ba9806ece4f44204da3688ada0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.2/kander-linux-arm64.tar.gz"
      sha256 "cf60693234b17364c1da4b69166a1f5aacabfde9c68908542802a4c6873ba09e"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.2/kander-linux-amd64.tar.gz"
      sha256 "f900a3d6741e6186bda1b57d80efaefc4a6d9f6d869cea1e7d8ba58f88c9aaad"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.2", shell_output("#{bin}/kander version").strip
  end
end
