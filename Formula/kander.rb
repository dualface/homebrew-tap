class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.11/kander-darwin-arm64.tar.gz"
      sha256 "4b417012a2681ce35304e82b252fb91db11112c80c37cf610d48064b656dec5c"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.11/kander-darwin-amd64.tar.gz"
      sha256 "a536066c4c7b0e45727e54c62b2410eaa8562ce07ad5564a88744019eb60046d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.11/kander-linux-arm64.tar.gz"
      sha256 "f2c3c1f0b8d1677ced6e62a94c0a126da2165996696ad934ff7d747bc4d9ec00"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.11/kander-linux-amd64.tar.gz"
      sha256 "c893cd51615b631cf623d44fc8136a3f2bba7eb17b01eccbc31ba8c397348bcd"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.11", shell_output("#{bin}/kander version").strip
  end
end
