class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.1/kander-darwin-arm64.tar.gz"
      sha256 "29e38a494bfbc2b0da225c854c1f07b430808076dfd44115f623c92724230049"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.1/kander-darwin-amd64.tar.gz"
      sha256 "b6809b362ff84da80491d345d6f2f19aa73ce6c943c7274e2a933c661ee43500"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.1/kander-linux-arm64.tar.gz"
      sha256 "0fa82a6a73db989c4c7327ce45ee3f9e4beaa41c49b8460bcdfd7e02aad60273"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.1/kander-linux-amd64.tar.gz"
      sha256 "d4b3d8a2eb0a83cda366b1f998673cfb94a40c678098c8a8fdd0d190f9e927ab"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.4.1", shell_output("#{bin}/kander version").strip
  end
end
