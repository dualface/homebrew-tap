class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.12/kander-darwin-arm64.tar.gz"
      sha256 "e87169897e5e7edc0030ea8f8c6b5fba1eaaaaf61ee7a60f595fa530ab529f96"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.12/kander-darwin-amd64.tar.gz"
      sha256 "ab86b4ccba6817add70d0cad7ec236b05af4d347b5d6f104cad74c375c516628"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.12/kander-linux-arm64.tar.gz"
      sha256 "7e45a0e4b2d58347ef32a666b5b08ed272c9d691d53c470b7e154d284dbc2b89"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.12/kander-linux-amd64.tar.gz"
      sha256 "216933370efaa9a0bae796666261babcaf3ca2a721b25079dcfe5d845def949e"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.12", shell_output("#{bin}/kander version").strip
  end
end
