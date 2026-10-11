class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.3/kander-darwin-arm64.tar.gz"
      sha256 "5ad64899aea53d573556f8c9258c8499e24f1c5974999f9413857b055e150afc"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.3/kander-darwin-amd64.tar.gz"
      sha256 "debbaceefbf827ccc397e396ccd8e01d26348cd0fb9f0603939894d0d048b204"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.3/kander-linux-arm64.tar.gz"
      sha256 "00992d06cf5a9b27ca7fc01e1ad9dd045183a3cd8ce5b58034d02628bbbd6360"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.3/kander-linux-amd64.tar.gz"
      sha256 "8678510c98ef146282744c35a6f98409270c17f1a01deed6f6536069fb1ac20f"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.3", shell_output("#{bin}/kander version").strip
  end
end
