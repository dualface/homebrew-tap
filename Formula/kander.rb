class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.15/kander-darwin-arm64.tar.gz"
      sha256 "e6ed8e36e45e53f3fa486fd2bb24588806bcdb9a307eb67ce2dbfa9f3e26226e"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.15/kander-darwin-amd64.tar.gz"
      sha256 "c220f8c4c0f8fac75da5827344b1c54550936fc25aeace59b179e689c412c9d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.15/kander-linux-arm64.tar.gz"
      sha256 "fcb8bde1efa89d5f729f64112688a3c754015d18ff8d9462ed59584748b074e6"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.15/kander-linux-amd64.tar.gz"
      sha256 "b605768182b9175c9f0dc2ff0a0a0a8b93782be23d04a9df62e693b4b805a81a"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.15", shell_output("#{bin}/kander version").strip
  end
end
