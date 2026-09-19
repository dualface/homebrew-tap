class Ullage < Formula
  desc "Local daemon and CLI for AI subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.7/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "acdda3b5dd040f126565f28abdbed6864563a63e5611c0df1fc4fac9e89046b6"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.7/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "63ee61760fd784fc81e0ad384f087a8215be16bfec84900c257b0673eded7a78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.7/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "96ec2cbcbbe5f30a8d5051f391fdea200b1adc018c283592d7fc05a8e4609922"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.7/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36894008f37fca375b7187d0c997d6de383cb5efd030eaa5c4b1c0f290de5d58"
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
