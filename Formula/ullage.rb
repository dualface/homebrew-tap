class Ullage < Formula
  desc "Local daemon and CLI for AI subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.10/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "de34fe5b98dc15332746e250742dd877709d5dc95dc202fd374f6e80620aefed"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.10/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "06473c203dfcfb008861dbd17b9b5d6131cd06f2dfd2e9ff5c510d540962e7e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.10/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a3291dff33a67a7d3561d88e230efd87c029294ddd0d9f01f934efeeb427cbf1"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.10/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b3eb754d188909f3fc1d1167486572d763a62e988f0ef08d47ad1b5e56c3a41"
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
      opoo "Could not install the user daemon. Run: ullage daemon install"
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
    EOS
  end

  test do
    assert_match "ullage #{version}", shell_output("#{bin}/ullage --version")
  end
end
