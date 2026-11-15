class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.0/kander-darwin-arm64.tar.gz"
      sha256 "4aa9142fa77c95204280927761a75a20f764f652442dc4439178e1ccd665518a"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.0/kander-darwin-amd64.tar.gz"
      sha256 "8e570cffed6fdb3a753505c87d75fa9cc26e77b154b4bd3a96a6a8487e5b0f7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.0/kander-linux-arm64.tar.gz"
      sha256 "61af4d7c1faab948ffa7ec76fd86aa367ee6576506060f20cfa69bb5e2d21fb1"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.0/kander-linux-amd64.tar.gz"
      sha256 "bfd13359f21bd325872a5744b5a50ff7d0f6b91d1d09b055b0c924067d498bde"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.4.0", shell_output("#{bin}/kander version").strip
  end
end
