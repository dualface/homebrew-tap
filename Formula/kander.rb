class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.9/kander-darwin-arm64.tar.gz"
      sha256 "ada63f084d7cc8036e1455a0da9ee451a611fb3e3872a9bed3fc63325b1d6e18"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.9/kander-darwin-amd64.tar.gz"
      sha256 "8a2a2b65288ca2c864d255b8d84e078803dd5f122858e7b9f203d47ed64809d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.9/kander-linux-arm64.tar.gz"
      sha256 "3504bb1bdd8a5a2467f78c30fbb5ae8ed5964cec13888a482310f4381feaf18a"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.9/kander-linux-amd64.tar.gz"
      sha256 "aa4582832534851643ab42cc5d58d1dfc349c0ea0865d95ca0ebe57a3b96211c"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.9", shell_output("#{bin}/kander version").strip
  end
end
