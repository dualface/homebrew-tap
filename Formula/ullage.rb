class Ullage < Formula
  desc "Local daemon and CLI for Claude, ChatGPT, Grok, and Cursor subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.2/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "dd6abe1de228945a23d155a609f6ab64f0448c80b229c405421c980f5f3037b5"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.2/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "ba1c3a37c6d7384c20c2c75173d6dcd2dd16f5aa06086b78aef2ee83fa0a6161"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.2/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "900a09455360c05d03dbc38db77212086ed53583a597306cf78928314e409bf9"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.2/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8a874ffd468b6e04bda6c2a4187cf3024d28f0f19fa2cdc9f3f008407fb1ed4"
    end
  end

  def install
    bin.install "ullage"
  end

  def post_install
    # Stop first so an upgrade bootstraps the new Cellar keg. kickstart of a
    # still-loaded job would keep the previous ProgramArguments.
    ohai "Installing and starting the Ullage user daemon"
    quiet_system bin/"ullage", "daemon", "stop"
    unless quiet_system bin/"ullage", "daemon", "install"
      opoo "Could not install the user daemon. Run: ullage daemon install && ullage daemon start"
      return
    end
    return if quiet_system bin/"ullage", "daemon", "start"

    opoo "Could not start the user daemon. Run: ullage daemon start"
  end

  def caveats
    <<~EOS
      brew install and brew upgrade install and start the user-level daemon.
      After an upgrade they pin the new Cellar keg path. If that step was
      skipped, run:
        ullage daemon install
        ullage daemon start
    EOS
  end

  test do
    assert_match "ullage #{version}", shell_output("#{bin}/ullage --version")
  end
end
