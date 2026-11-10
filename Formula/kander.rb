class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.2.1/kander-darwin-arm64.tar.gz"
      sha256 "c8a2bd488d59930e82c2103e25639865d9616c451b3f8d89c226d07769184194"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.2.1/kander-darwin-amd64.tar.gz"
      sha256 "07e9ab39dbb3f71684b2facd6f31802001dec9c4bc3acb1653db0caec29f017d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.2.1/kander-linux-arm64.tar.gz"
      sha256 "1a3477e4ee26f2ead25964633608496d3af22848c30c6d8da2a258cff0ce0a35"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.2.1/kander-linux-amd64.tar.gz"
      sha256 "abbae83a9c6e9f74385ead1164f2d8bf02eb6b3110f59421e7abf524df33612e"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.2.1", shell_output("#{bin}/kander version").strip
  end
end
