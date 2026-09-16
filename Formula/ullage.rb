class Ullage < Formula
  desc "Local daemon and CLI for Claude, ChatGPT, Grok, and Cursor subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.1.1"
  revision 1
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
