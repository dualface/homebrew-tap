class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "1.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.6/kander-darwin-arm64.tar.gz"
      sha256 "e403833f6c4420e24c3fd905ad551495ebef592d7bfe0918d79ae50955fcabc3"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.6/kander-darwin-amd64.tar.gz"
      sha256 "8b430fcc4a20e7068f4bd093f7ecdf92e63d96fd102ba5d08a78c339817ddf9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v1.4.6/kander-linux-arm64.tar.gz"
      sha256 "ced86bc6fc84799f46bc14cc5649e6d6be084bfaea1ded9036cae0a0252d5406"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v1.4.6/kander-linux-amd64.tar.gz"
      sha256 "fef941794b0bd986bf059e64c0f27b75a32c9040b17053e37e1c3c514d6a07f0"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 1.4.6", shell_output("#{bin}/kander version").strip
  end
end
