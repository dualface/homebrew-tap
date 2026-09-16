class Ullage < Formula
  desc "Local daemon and CLI for Claude, ChatGPT, Grok, and Cursor subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.1/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "304c33aeb7b27f4e775ee493b297f71a36c20058c1e4b36a6781c0a512a26ec8"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.1/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "cc13e24af85a6d6aa06b5b20a2c43df734d795ee85b933a1c2a8926e13b3e113"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.1/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ea81104c3340c5542bd7398c031690399d426c0c1175eb2a65f7bcede9b44ea"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.1/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "146ef9a4ecf1ffae45226e2ad6de2c9a7c957ee3b0d3d6c732c0abf6fa7c75a1"
    end
  end

  def install
    bin.install "ullage"
  end

  def caveats
    <<~EOS
      After `brew upgrade`, run `ullage daemon install` again so the user-level
      service pins the new Cellar keg path.
    EOS
  end

  test do
    assert_match "ullage #{version}", shell_output("#{bin}/ullage --version")
  end
end
