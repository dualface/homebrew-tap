class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.5/kander-darwin-arm64.tar.gz"
      sha256 "2a50b25ac2100a3781d95a05ddf09127054b18506d0f7f76274c5800af54c842"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.5/kander-darwin-amd64.tar.gz"
      sha256 "284edd319ec3aea196edefefe1c52346bcf813f96feb71c9b6ee3e09cbc891a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.5/kander-linux-arm64.tar.gz"
      sha256 "23e05e5caf9b6037fcb4a48aaebddd4b8ed05d32ef676c6197992784dcc64af2"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.5/kander-linux-amd64.tar.gz"
      sha256 "5f92d0e1baaabbd11e4bb63c99e8df9ad0bc08da86b425bf91acf8055c30a24f"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.4.5", shell_output("#{bin}/kander version").strip
  end
end
