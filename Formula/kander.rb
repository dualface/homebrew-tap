class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.14/kander-darwin-arm64.tar.gz"
      sha256 "64625c5785b3fa6bece2cb427245b829436f6c4a57955232199d4c0e1ec85be6"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.14/kander-darwin-amd64.tar.gz"
      sha256 "6e75579a255120dae24e0166d2cfdfe9f1bd5036340287145ed00fecf7e44ec5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.14/kander-linux-arm64.tar.gz"
      sha256 "4cda5cdefc6760cb6a75e44d8e22fe0ab4f282370bd2e4c03ca090819252ad3e"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.14/kander-linux-amd64.tar.gz"
      sha256 "6cd0b7fa2183f44abd5e7d431638bd08484e80cbf69382dc20c87b87a5630506"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.14", shell_output("#{bin}/kander version").strip
  end
end
