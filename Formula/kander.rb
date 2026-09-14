class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.6.0/kander-darwin-arm64.tar.gz"
      sha256 "931c01a60959eabce24ea68baf08f8fb53fa3340eddbeb34ac96a80aab263236"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.6.0/kander-darwin-amd64.tar.gz"
      sha256 "4853ceb91f6c7475cca26f33ec09851227b5cc34589d590d71241d9dc9f36a1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.6.0/kander-linux-arm64.tar.gz"
      sha256 "51f51b050107cff9a3e3350ad801569bf157ed920d8142436fc0add8fcbc5f48"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.6.0/kander-linux-amd64.tar.gz"
      sha256 "2bf504f3045846ce059a6bc6a0a3bf3f9736a53b1ea27c16e8b686e8c8b2954d"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.6.0", shell_output("#{bin}/kander version").strip
  end
end
