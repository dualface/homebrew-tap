class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.6.2/kander-darwin-arm64.tar.gz"
      sha256 "7151c0c6a062c5009b189da21dc5e5f2ec5b37935f9b1e07987b759d83dcfd9d"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.6.2/kander-darwin-amd64.tar.gz"
      sha256 "48ba91ecdfb52e64787dfda040ffbec3fa03fa45da14decd00582c7ab77fc32a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.6.2/kander-linux-arm64.tar.gz"
      sha256 "6b4ba6980d5871de24e0141e22c58428d5d204c55ac8ca1dbca82133520b9466"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.6.2/kander-linux-amd64.tar.gz"
      sha256 "e93c05d90877d7b7680f7de0eefdf4b68f678437fe525b40ff0433e508b345a8"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.6.2", shell_output("#{bin}/kander version").strip
  end
end
