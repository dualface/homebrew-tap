class Ullage < Formula
  desc "Local daemon and CLI for Claude, ChatGPT, Grok, and Cursor subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.3/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "12027edee33a1adf1dc40bb9eb5e287c18e655d2ef5d92a414481755a287b6ff"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.3/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "3784b717fd3c06ac52559fbcfe5a21cbcaeacb2e29e069b6062b2bb8f98861a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.3/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25b5e59dabc51e796cd7766d47638eb2ba4dc2b0d8776d468f4353a46a2d3059"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.3/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "728b6b3f5f5735d5cf8017451f02e2dfbea39bd2921d1195362d561cef961ccb"
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
