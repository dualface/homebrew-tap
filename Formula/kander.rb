class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.14/kander-darwin-arm64.tar.gz"
      sha256 "7dec052c929eb19ee98f9aa2ade214adf5d170bad42c013e8b0addd249eeacbb"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.14/kander-darwin-amd64.tar.gz"
      sha256 "58ab486dd547eb4c06956b5b55e1161d0319cf9a126de5d2974f4c9c626165f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.14/kander-linux-arm64.tar.gz"
      sha256 "b14f7fbd57af3e2a4332d869bb2f15b33d6ae7448baf5427f29af10287ff67c4"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.14/kander-linux-amd64.tar.gz"
      sha256 "13744091e853ff12b1ffbff57b12b0305a6209cf2613744102429fcf5b3be05b"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.14", shell_output("#{bin}/kander version").strip
  end
end
