class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.5.0/kander-darwin-arm64.tar.gz"
      sha256 "177e76f4c0d8746793fecb1701cf14106784970f29ef287807df84156f91d26d"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.5.0/kander-darwin-amd64.tar.gz"
      sha256 "a0fd4f266434a013762ffd1fce3bf515cba10098fe916c63878e74dd024b4fa5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.5.0/kander-linux-arm64.tar.gz"
      sha256 "5a8ccc4438cb0fdc88ef91cee82438563e03128ef4c7ad0cea99ed6de0bfbe23"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.5.0/kander-linux-amd64.tar.gz"
      sha256 "2ebfb9bea4dd6788d42cec3c909fe93d622c8c4d51c80fe9460b5069ff96f0dc"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.5.0", shell_output("#{bin}/kander version").strip
  end
end
