class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.4/kander-darwin-arm64.tar.gz"
      sha256 "5c363e0b59aafd96d4166c2d5151cf96f45e21d65a1e1f9cc83d3e4478e74580"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.4/kander-darwin-amd64.tar.gz"
      sha256 "0c785c82307f86af8d09404b6f806211bed2ae12dcdc055e0f82e208e187b020"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.4/kander-linux-arm64.tar.gz"
      sha256 "4c13a2d1f5213fe3d053572c609f48c4288ade6886b1407873fb548cc97b5be6"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.4/kander-linux-amd64.tar.gz"
      sha256 "4b55ad44d5b8cd558cfe3ba586c9e4dbf153870a9e569453dcf3ba1323ce5ac8"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.8.4", shell_output("#{bin}/kander version").strip
  end
end
