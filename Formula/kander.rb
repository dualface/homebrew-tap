class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.1/kander-darwin-arm64.tar.gz"
      sha256 "b6a9dd6e7dee8d7909b3588b6f09c40ffb5bd454848d3b09a1d73b2e155030c3"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.1/kander-darwin-amd64.tar.gz"
      sha256 "869086c195f668b9a6487c7851c8b70de0a1ad7384898508e3c45390ed8caedb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.1/kander-linux-arm64.tar.gz"
      sha256 "9126327dd800f428ac36121ff9f12a3d2bf843bca9230b82796b87f3acc13351"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.1/kander-linux-amd64.tar.gz"
      sha256 "dd0de159ce1ab837e47847bdac50725131c45c1bd1bc3c81f48a551f79eb77db"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.1", shell_output("#{bin}/kander version").strip
  end
end
