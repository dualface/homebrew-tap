class Ullage < Formula
  desc "Local daemon and CLI for AI subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.9/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "79c62405fa8a3a40cbb969ac7c98ee4e4bb0502e2927211031d66e19eeb7fe79"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.9/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "626eebfab267362548bf85f9041038bb1239bc69a32c7b914b4e16bb913908b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.9/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e2a7c50a510f2fbfe77458582c3a6cee573442e67f7692f13ccd6ea0db72217"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.9/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c54d38e5de72525659996556b5b6f727afa451226523b2ef29cc0f37b2af8ab3"
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
