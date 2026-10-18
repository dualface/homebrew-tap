class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.10/kander-darwin-arm64.tar.gz"
      sha256 "beaf7976916f9d477b67e87830109f2464a164bb22e8f8c63533988c43907c14"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.10/kander-darwin-amd64.tar.gz"
      sha256 "5af380ed4a7721c8ac2b01e7ef418640a969d8871dcc2eb824786b366c05ee78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.10/kander-linux-arm64.tar.gz"
      sha256 "0cc22e129d2f4c66d8552f489c03673f0b56c13dc58277c167f899fd40147390"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.10/kander-linux-amd64.tar.gz"
      sha256 "fa6d602e7f167b9a396141f524dd98248d45001606af2266d8c97ba4b85e85ab"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.10", shell_output("#{bin}/kander version").strip
  end
end
