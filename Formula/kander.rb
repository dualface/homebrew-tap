class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.6.1/kander-darwin-arm64.tar.gz"
      sha256 "f8dde961c886b295a320be05f20e3344232bbf3d0d694f43a7f44ab4b4770509"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.6.1/kander-darwin-amd64.tar.gz"
      sha256 "24a66c134da8dea6dd4896e68a7dbc64b355e668c9c59b53934fbb12754f9b44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.6.1/kander-linux-arm64.tar.gz"
      sha256 "fd61bc14fc6a808cc2fe260e5a7e65fb3da5436b4206389ca1ca24264ba9694a"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.6.1/kander-linux-amd64.tar.gz"
      sha256 "7e4ec7ace651ebcddd9e981709b0d32cf70e0707f351c0bc2a445d7c70ee21bc"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.6.1", shell_output("#{bin}/kander version").strip
  end
end
