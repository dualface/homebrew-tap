class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.17/kander-darwin-arm64.tar.gz"
      sha256 "081543b87ac6c26c548ac78e9eee0f87d4e87c20e1ae73c657af2c96e96918a3"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.17/kander-darwin-amd64.tar.gz"
      sha256 "b36d75835b79706d2d16e8257bbdebd8e8c8f1189ca928b46509f87db653ee1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.17/kander-linux-arm64.tar.gz"
      sha256 "fc9b14f213481015f4dc9df0f7ef9ed2853951f4de68b48af1dccd3402c8c097"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.17/kander-linux-amd64.tar.gz"
      sha256 "3a938a1fc3731d1b5f121c9c36de18adbfc7a066d810a0166707e03d918c8a7a"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.17", shell_output("#{bin}/kander version").strip
  end
end
