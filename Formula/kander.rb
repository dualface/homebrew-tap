class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.4/kander-darwin-arm64.tar.gz"
      sha256 "4a89ecbed3adde6d1135c0d3b27018358f335a10f56911efac8eb93f9aa6b737"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.4/kander-darwin-amd64.tar.gz"
      sha256 "a1e6e218ce06d91d10283ee88bebf063b851e75a127cdc7ca317282bec312643"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.4/kander-linux-arm64.tar.gz"
      sha256 "bb13adcadaf3e1dc88043ec2c6ae99bf2e6ae5eead6025923788afef24df84bf"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.4/kander-linux-amd64.tar.gz"
      sha256 "f0f35434020a504d0c272e3902f548e103d8aa006b06e50594185e1855f99cd9"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.4", shell_output("#{bin}/kander version").strip
  end
end
