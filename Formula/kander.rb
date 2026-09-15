class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.0/kander-darwin-arm64.tar.gz"
      sha256 "198eb37ca9cb00c3e50c885ac18b07f20d012930bb04b412d8e10704eb0eca76"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.0/kander-darwin-amd64.tar.gz"
      sha256 "ea87a2b66cfe8862e4dbc3471bba50d035084ba69ca44049bdd54c6d4ea8eb09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.0/kander-linux-arm64.tar.gz"
      sha256 "234e31a84ebff32a2c3dd9e974973b3d07b89b43d08892782eb15d51ac0ebbb7"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.0/kander-linux-amd64.tar.gz"
      sha256 "22bdd7389a01ef1c4fa92f6d2f8cec44663f010e72e95caaf2c933f91d879719"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.0", shell_output("#{bin}/kander version").strip
  end
end
