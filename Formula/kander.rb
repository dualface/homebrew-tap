class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.2/kander-darwin-arm64.tar.gz"
      sha256 "e9f23bb2d4b0bab1448ebb01a78d37700de9edff90e730c129a3a12440b37422"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.2/kander-darwin-amd64.tar.gz"
      sha256 "e2f1eaedd1a240fdcea13c57b957c72826aa01132be6bdc50010dd536342ecd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.7.2/kander-linux-arm64.tar.gz"
      sha256 "66144beaef3b0f30c189f200bc14c52c62a09384530f6485ee458cbafb90457a"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.7.2/kander-linux-amd64.tar.gz"
      sha256 "4c7a88e8e2ed59003b42158ff9fd62f66f4d14591893dcf0ab6d3fd74db45e91"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.7.2", shell_output("#{bin}/kander version").strip
  end
end
