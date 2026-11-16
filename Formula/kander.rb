class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.2/kander-darwin-arm64.tar.gz"
      sha256 "e807fb110ec5666be1b67a3f9f387904534c2ba2903cf50ec72a622d069c6b3c"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.2/kander-darwin-amd64.tar.gz"
      sha256 "3a53d55dbf8c85a9e4781fbab39461ea97d67e4e4aef545bb3d64a9dde4f6293"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.2/kander-linux-arm64.tar.gz"
      sha256 "d2dabf85a399ff5e7f8b512715ff04943d29e4da4be330481e1261310ba276b1"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.2/kander-linux-amd64.tar.gz"
      sha256 "900a584fdba30b281a1435cbf7fa837b7540c2bc0a748b1602c941f9b7d89bef"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.4.2", shell_output("#{bin}/kander version").strip
  end
end
