class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.6.0/kander-darwin-arm64.tar.gz"
      sha256 "75cb545795f4bd2b53ae2c9e59e4370885715eadbb4cbe147da4d9c487b4f41b"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.6.0/kander-darwin-amd64.tar.gz"
      sha256 "6bf457d79dbfa99a9915e13414134557391cd2c2b4f964a3f97f088aad9c9167"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.6.0/kander-linux-arm64.tar.gz"
      sha256 "e691553af5154c1be74692cb9be5474533cb65c496750aaa634661b6c34b6276"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.6.0/kander-linux-amd64.tar.gz"
      sha256 "547526c8e20fa50993cd49e3fdea7f5b5836206eb738ea95272e3d433184b84e"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.6.0", shell_output("#{bin}/kander version").strip
  end
end
