class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.11/kander-darwin-arm64.tar.gz"
      sha256 "8d4c97640b96aff68ca5f6c5ca582f1551475426c85b2cb3a70d1d76d1b51dae"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.11/kander-darwin-amd64.tar.gz"
      sha256 "e3324e6d3676b1e576539c146df24763fea58cfb346ee15030472caf5dc94d75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.11/kander-linux-arm64.tar.gz"
      sha256 "4c8b306ae74e68076594e76cd5358185db418cc8ce1b97f61b6afd7a609e097b"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.11/kander-linux-amd64.tar.gz"
      sha256 "81f0338e17a070b873b0f99968e823463ab4f5f5c4a411380992012ed39ceaff"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.11", shell_output("#{bin}/kander version").strip
  end
end
