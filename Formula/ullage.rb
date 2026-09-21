class Ullage < Formula
  desc "Local daemon and CLI for AI subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.2.0/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "896c558c8f1661091e8a1dbd5ad36b959908adbee4cdc9ac3f681fbc20907acc"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.2.0/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "8f215d7c82f410c6fd3f2030ef02c2c71f05d9c58ecfa94b4ed006dd4ad298a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.2.0/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd579c9e11d7e535f7cae0d70d493bb457222b16ea36fe004f843939a8e7ae5e"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.2.0/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fa5267200e6c55a2e9474259f095e5f49684b1752c60a8d72d7d52660d4f036"
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
