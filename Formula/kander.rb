class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.8.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.8/kander-darwin-arm64.tar.gz"
      sha256 "21d58d323e4d4b87a66204c48d67113dd0b101fef9130747ceb86e06bc2aba3d"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.8/kander-darwin-amd64.tar.gz"
      sha256 "9f7024711b1c4016ee7876e85937942b1dac81c07e2c26bbc240b99038712ac7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.8/kander-linux-arm64.tar.gz"
      sha256 "a8bc008e6d18618d44a99bf892dc2d535a32c3fa2c363f85eda3e8b00342f69f"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.8/kander-linux-amd64.tar.gz"
      sha256 "4dd3c81b13e35cdb796f8b8e0e67d351cf6b9aefdfe8049b049124d4e10c89e4"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.8.8", shell_output("#{bin}/kander version").strip
  end
end
