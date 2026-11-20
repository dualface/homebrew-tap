class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.7/kander-darwin-arm64.tar.gz"
      sha256 "5dd0f07b5abbcf1227315402ebe9bcd5217eadd3b7be23348cfae2afcd093b07"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.7/kander-darwin-amd64.tar.gz"
      sha256 "21860e8c38e4eb49bb68da27dd2c0431fca444acbb4c027481ddee5998034d2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.7/kander-linux-arm64.tar.gz"
      sha256 "c520bdb75f7b8029015612acc5e45a5fd8487f07f03371e88330bb57b08d1bcf"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.7/kander-linux-amd64.tar.gz"
      sha256 "f137577a1bb66ebb9793b3b7b688fdc94dc766020a431df6d88b309b8ecdce1b"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.4.7", shell_output("#{bin}/kander version").strip
  end
end
