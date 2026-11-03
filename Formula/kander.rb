class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.1.1/kander-darwin-arm64.tar.gz"
      sha256 "68502cb93c15069cee5f3a31e87e85d3d4c08c59c87068a77905ed526a44081d"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.1.1/kander-darwin-amd64.tar.gz"
      sha256 "a1a9e8eca578a63286844b36f7d5ae3ac89349a8f84cb6ce3dd057f2c9c144c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.1.1/kander-linux-arm64.tar.gz"
      sha256 "576a45a03af17d7e4d735b0d6eb5d9aa2332215a971a72ad711a069de4e91c4d"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.1.1/kander-linux-amd64.tar.gz"
      sha256 "cd86f73a36da2d38597cd02f4d8e0872748de4c07c8575ab9f762754390ae5b2"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.1.1", shell_output("#{bin}/kander version").strip
  end
end
