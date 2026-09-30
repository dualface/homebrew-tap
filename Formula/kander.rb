class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.8.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.7/kander-darwin-arm64.tar.gz"
      sha256 "05d7ac680834ed7eb81d3807913d6f47ecb3b48f6c61547c884bf6974b646409"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.7/kander-darwin-amd64.tar.gz"
      sha256 "91be944bbb5edd88e7131e6caf3bb3fd59434b93593e1ff2da3dd88c5742b8e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.7/kander-linux-arm64.tar.gz"
      sha256 "569b54e0269dc36bfdaf1985a4e3d2caa985bd3717b9b7fd0fdcb808329a891a"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.7/kander-linux-amd64.tar.gz"
      sha256 "af9214c18ae1b68cc9742e5ac9582f9193178096306f5aeb8dd854f38fa697cd"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.8.7", shell_output("#{bin}/kander version").strip
  end
end
