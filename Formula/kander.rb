class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.1/kander-darwin-arm64.tar.gz"
      sha256 "1260938b978e3526060fb095ce59bda28b1090d5a3d06a0068ca5da68450734b"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.1/kander-darwin-amd64.tar.gz"
      sha256 "8f304e9d26dbc03c68f406665513c4800b179ad19397efd0a6f17b06c9aeead9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.1/kander-linux-arm64.tar.gz"
      sha256 "0125818b34b35e32497ed52e4a3e6b7a2bb586580cfc7d778fd4e57cef883ca3"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.1/kander-linux-amd64.tar.gz"
      sha256 "c9d16d1649cd6beec1454f0d311dcfb9baad84034899f0064d4f82ed14b95e4b"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.1", shell_output("#{bin}/kander version").strip
  end
end
