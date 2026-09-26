class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.3/kander-darwin-arm64.tar.gz"
      sha256 "da47ebf3d5ffb85eda49f6a8dad4581ba14efbca6857ba8b59c9646cbd734602"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.3/kander-darwin-amd64.tar.gz"
      sha256 "5bd469379598a4dfa02432717405c73581181d3e5d050b79ae031de5a6df0638"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.3/kander-linux-arm64.tar.gz"
      sha256 "a5ed40d3da26666759cee429e7c971a2f53e3285f594d6cdcb4d6b5af55c5586"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.3/kander-linux-amd64.tar.gz"
      sha256 "39ae818284d3576e9b8d5b11ee4e453120d20f19042e51930a96c38b53e4835e"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.8.3", shell_output("#{bin}/kander version").strip
  end
end
