class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.5.0/kander-darwin-arm64.tar.gz"
      sha256 "922dd7a8ddac71cd6566968e5d1222969b96b1d17e8f2a3333a65b6a93f47c5a"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.5.0/kander-darwin-amd64.tar.gz"
      sha256 "061f6eb74fb6d9407cfd7d2a7e255c4c24c9daea3a1f5091f7657198a2346b4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.5.0/kander-linux-arm64.tar.gz"
      sha256 "a3aaa7db12862150ec48850424abd47b08ad8ce7665dfb8149aef04218115686"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.5.0/kander-linux-amd64.tar.gz"
      sha256 "3373a324c0c4e253dbd5a50ac1a2a6f70548663e56b99ca96906cab016d77f20"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.5.0", shell_output("#{bin}/kander version").strip
  end
end
