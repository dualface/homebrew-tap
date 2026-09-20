class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.8/kander-darwin-arm64.tar.gz"
      sha256 "1152290d667d1605ba774f7098bfeb0869d97c838f9b0e3f14ed14edc4dc2f47"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.8/kander-darwin-amd64.tar.gz"
      sha256 "0c59da7caf38a93ecafd08435f0479baab84e23c7c0185b5c1bf8fac274bc6af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.8/kander-linux-arm64.tar.gz"
      sha256 "6eff0a130a13ae76785ab245640b47edb2ae896d1de17948cd4610557bbe60db"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.8/kander-linux-amd64.tar.gz"
      sha256 "e59119ecc11dbeb18deab41b998bd95e22b8e8bb9690f2f51e9e1a1f0bfe4671"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.8", shell_output("#{bin}/kander version").strip
  end
end
