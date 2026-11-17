class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.3/kander-darwin-arm64.tar.gz"
      sha256 "7d911a51f727bbf29d693c27f425495647c49cabe6369b991e267cdb2e6ba861"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.3/kander-darwin-amd64.tar.gz"
      sha256 "ebeb720be4555b0f76b1d5bb71e3d1ec2a520f843b2826ece27d5405b6dc0fab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.3/kander-linux-arm64.tar.gz"
      sha256 "f9866e29e472080869dacf652346fdc2c3c11e448c249bc1eaec5fdab1d0451f"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.3/kander-linux-amd64.tar.gz"
      sha256 "2aad08bf2e7aba6347ed65851447bf3ffbb9583ce50173bd99259b4c595d4ba2"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.4.3", shell_output("#{bin}/kander version").strip
  end
end
