class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.8/kander-darwin-arm64.tar.gz"
      sha256 "ac745e2d8a1fb1b5bc0daf3a431dea6ae3853bc5daed6bed5dd7b207c95bf8b9"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.8/kander-darwin-amd64.tar.gz"
      sha256 "8686b630ef717fc61124f72a40a1647dd2df5c58b609e7ce2b11e65a74e65f6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.8/kander-linux-arm64.tar.gz"
      sha256 "bbd92ae4e0d5cbe12ec20e692fe970af22bb71b8af51ad156e0cebc0904efca5"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.8/kander-linux-amd64.tar.gz"
      sha256 "71eaa4a47bb1c3dcab1f3e54299bf2af7373dc398466f649dd3aca2bcdc8ddc4"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.8", shell_output("#{bin}/kander version").strip
  end
end
