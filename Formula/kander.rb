class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.5.2/kander-darwin-arm64.tar.gz"
      sha256 "96bc454c4ca36191b73ebd19886dd4facf4c09ee3635753785b0dd39210d3969"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.5.2/kander-darwin-amd64.tar.gz"
      sha256 "28eb25ed4ec7eddd4629b0bad1aa9e74e37a62e7d2f2eca8b6b9312350a0ce8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.5.2/kander-linux-arm64.tar.gz"
      sha256 "c3ffdfb633c58ed12f4c5915c010503b515f899742101ee87993158f4b13a905"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.5.2/kander-linux-amd64.tar.gz"
      sha256 "925e8694bb9bba1557a3785b73e7509ccb39a8ed6f46039bfa1196337aab7f1d"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.5.2", shell_output("#{bin}/kander version").strip
  end
end
