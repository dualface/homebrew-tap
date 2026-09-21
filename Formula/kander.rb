class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.16/kander-darwin-arm64.tar.gz"
      sha256 "a1199e316e7c7f57da9f145a05df42838640ff1588e1012a10fc832539d65437"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.16/kander-darwin-amd64.tar.gz"
      sha256 "f218955dc52a420fc414a024f5c8fce3d598e3fa1c7c9cd30743aefb9bb14a28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.16/kander-linux-arm64.tar.gz"
      sha256 "1754fa3e73366778e6cbbef5593258bfd0517e9406da50f8543b18651401e290"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.16/kander-linux-amd64.tar.gz"
      sha256 "4d238f2f9e48269caaf6f7555faceac43674f875a18dfeb0972f709a029ebb3f"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.16", shell_output("#{bin}/kander version").strip
  end
end
