class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.3.0/kander-darwin-arm64.tar.gz"
      sha256 "c3985d5df16c65ea34cd09038c0a8af7057cf33c904609a1622713bc887f0256"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.3.0/kander-darwin-amd64.tar.gz"
      sha256 "57f9e83a308869345a7ce6926606d9f54a60e66685e3a167fbc6b56ef86d967a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.3.0/kander-linux-arm64.tar.gz"
      sha256 "7ea34d962e272875be66e473178eb4b576587858e74b1958681f8134390481f6"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.3.0/kander-linux-amd64.tar.gz"
      sha256 "8a75c347152eee0aff0b66f74b94c17c2293e4c1ca3262b539c3d2d9a8b86e59"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.3.0", shell_output("#{bin}/kander version").strip
  end
end
