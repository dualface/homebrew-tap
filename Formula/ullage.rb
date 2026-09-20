class Ullage < Formula
  desc "Local daemon and CLI for AI subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.8/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "5ad100812d13aed8c8f0f1a0402404c6e0bd3be18cacc599aae909c1f0e01565"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.8/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "140c164823cd43aa475672fcb3f530ea9f7e51c617fd23cc7fe3afff37054a8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.8/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2fe60c7f2170bbba0d3f4b608fead537482ccfc560bbd7a916671d7a8f493bd8"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.8/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e7b6592cfe6b3f255e5ff51838fea0cd591805372eb17c8aaa02babf7523a23"
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
