class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.12/kander-darwin-arm64.tar.gz"
      sha256 "fb575a0f593ef3ad4de8beea0743d9f7eb59189fee2cb052f9cf9e507d59575f"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.12/kander-darwin-amd64.tar.gz"
      sha256 "210b111995fa937016842bc3e0ce6395cd2e1cb37882c16484e2563bd1605b9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.12/kander-linux-arm64.tar.gz"
      sha256 "228225858654921ac6221e2162b6b4c5422c98b47ca90f2a4ba200cb0412274e"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.12/kander-linux-amd64.tar.gz"
      sha256 "60e2ae5403d24f57f96a8e946788961f2087585117124781d58af93393216c6c"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.12", shell_output("#{bin}/kander version").strip
  end
end
