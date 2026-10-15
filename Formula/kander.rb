class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.7/kander-darwin-arm64.tar.gz"
      sha256 "0b9fa3d66c52a42da72f282d877747fcd84670aff6581b829ef78efd11ccde74"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.7/kander-darwin-amd64.tar.gz"
      sha256 "14b2dc20b89a747d6e36d91889f9d45316c900b706711e601a30f214e4c92422"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.7/kander-linux-arm64.tar.gz"
      sha256 "f0a8763334df5d2124708cac3dceac0ead4b40092265249110da19d57918d95a"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.7/kander-linux-amd64.tar.gz"
      sha256 "ca0949cc136121f3edefb4b45b17a9ebc43c51db4b76bc5d56d1cba88c5741d4"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.7", shell_output("#{bin}/kander version").strip
  end
end
