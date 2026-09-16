class Ullage < Formula
  desc "Local daemon and CLI for Claude, ChatGPT, Grok, and Cursor subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.4/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "3a6d5ceac6755ffacc56f55bceb2311f4cf02ade13cfcedcc2f06785fccf4a9c"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.4/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "b6e3d1f2dffc47f0fda6cd387332486e45f4e7dccfb3a77c4f6c7fbb4b10796e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.4/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b29a8c72895f4782bba575622bc37330a18f2d7ef75433b6b470becc6ae073b1"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.4/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f110f46b9f183757a8df9b241cdf7a43e7e965edc16695eb0c9bd157aefc9fee"
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
