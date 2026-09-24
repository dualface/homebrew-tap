class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.2/kander-darwin-arm64.tar.gz"
      sha256 "78cbacfe1700852adf8aa0d21892239b6a317cd1a1d652f451c15b073575e7c3"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.2/kander-darwin-amd64.tar.gz"
      sha256 "8df6194b1cb440fd9bf0d66ee9ca6f47c78c938d882239b815acc3aa7316555a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.2/kander-linux-arm64.tar.gz"
      sha256 "4e49afd29f0187295fef340cfff7f20044be80d1d4d5cee29c092065321bd4e0"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.2/kander-linux-amd64.tar.gz"
      sha256 "8b2da99fe95d6d4d45e6ff82d131c39ceb907ceadab4b350a3fed7b604b05a70"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.8.2", shell_output("#{bin}/kander version").strip
  end
end
