class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.6/kander-darwin-arm64.tar.gz"
      sha256 "cd0402b9d2c7cdac3610dfd6133d1f36a60d4d115feadd66694de672ccdef265"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.6/kander-darwin-amd64.tar.gz"
      sha256 "463d266781d442570c05a9f9a47b5a66926695ae4c0f7eca049aa4f692a0f148"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.6/kander-linux-arm64.tar.gz"
      sha256 "daf33598ae08738d1d5806800f0f8a44ae7f52e322cec4adcd94e0ac4d8f6ca4"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.6/kander-linux-amd64.tar.gz"
      sha256 "3397a1c16888e84c72369809b64627fc3e86d9cfee7e57bf372025054ae41373"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.6", shell_output("#{bin}/kander version").strip
  end
end
