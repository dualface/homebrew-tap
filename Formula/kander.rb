class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.0.0/kander-darwin-arm64.tar.gz"
      sha256 "da0fba34ffd4e053891753000c876c76edef26862c114023e87a14a14da2d97e"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.0.0/kander-darwin-amd64.tar.gz"
      sha256 "26973608ea3af0d0b22f00df9fffdb37194fb22ca76726315b48dcbe48d50079"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.0.0/kander-linux-arm64.tar.gz"
      sha256 "db6d22ac89ac3c4c193e79490a2316599e05ccb4a65e2f9096a88572f780e797"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.0.0/kander-linux-amd64.tar.gz"
      sha256 "c8f57a3e611104313e8ac9014fdeaefbd1efe9cb069553b248993fd4486c0a47"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.0.0", shell_output("#{bin}/kander version").strip
  end
end
