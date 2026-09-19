class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.4/kander-darwin-arm64.tar.gz"
      sha256 "8cd628da0c7d3aedc1e7b3fe35b199afb0917444be9492249b05f30194c0f121"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.4/kander-darwin-amd64.tar.gz"
      sha256 "108cf2ae87206c7456fdc7d85be0fd55edf93c0011443e6b663ecd736c3e58b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.4/kander-linux-arm64.tar.gz"
      sha256 "c064e7aa534abd060a0a24fb3de793fcb6320045880f33594d1973ae8e61aeae"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.4/kander-linux-amd64.tar.gz"
      sha256 "747d80cc767a921646389cc3bf0fd19ab80934b778524a2335986d5daaedf3f0"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.4", shell_output("#{bin}/kander version").strip
  end
end
