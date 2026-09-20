class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.10/kander-darwin-arm64.tar.gz"
      sha256 "2dfbb92acfcedc0a21088cd4043f847f502f66875d79b89008606cfa71abfda0"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.10/kander-darwin-amd64.tar.gz"
      sha256 "89ac9832a0408981ee2a8f7327a6492e1b69b79b7601f7fc789cdd2c4363d68a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.10/kander-linux-arm64.tar.gz"
      sha256 "a787f9d91990848ea2492455d3416341764321e83a790f89f84327f4af166569"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.10/kander-linux-amd64.tar.gz"
      sha256 "f53411ec1e43d51c7470d39cdd821abd718180abfe677e3a0ba8559ca95e6d7f"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.10", shell_output("#{bin}/kander version").strip
  end
end
