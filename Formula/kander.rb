class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.3/kander-darwin-arm64.tar.gz"
      sha256 "ad253ad9a254b4a3e998e46117aa8de71f991ddc307526bf3dfe8071c88c2936"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.3/kander-darwin-amd64.tar.gz"
      sha256 "97353ad7c7fab39ecc79a3f2e4456dfff82a105ec625c2c5acb3ff09a3137f20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.3/kander-linux-arm64.tar.gz"
      sha256 "a0343e89002b7ab27c7bdc70c5ecd1fcc0abade3f04bb66bceb3a85820a2b6d9"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.3/kander-linux-amd64.tar.gz"
      sha256 "760c1468e3d4533bc248060c130b57347875027f6229fa5252047f88fca4d3b7"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.3", shell_output("#{bin}/kander version").strip
  end
end
