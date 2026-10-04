class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.0/kander-darwin-arm64.tar.gz"
      sha256 "ae793c02a2958500dd13ddc7ad2c8ee1f17dbdafd3ab05d043a168dbb56d77bf"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.0/kander-darwin-amd64.tar.gz"
      sha256 "71c031f89cd9a803c20996d1bc61f999209c8ad4bb802e743f0399cf9d293f00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.0/kander-linux-arm64.tar.gz"
      sha256 "c6ece1eb61d71ba6241426a87283636e42e8f97aba9b351984606a3219e1cdd9"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.0/kander-linux-amd64.tar.gz"
      sha256 "31472ee6d5ae1386f9b9b6eb0efcf7a1776af41ac2ae7cbe228880791e3ea9ff"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.0", shell_output("#{bin}/kander version").strip
  end
end
