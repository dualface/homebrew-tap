class Ullage < Formula
  desc "Local daemon and CLI for Claude, ChatGPT, Grok, and Cursor subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.6/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "245dfeb86cb8ceaa0c50c925b0c4bbe3e6534a7196034fcb228f10e104658393"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.6/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "c9f1c2bbd5cd9bfa7168e48d0cafb3dc777dedcd59244093fcc37a4ab5cb0fe5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.6/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6ee051c2361b6aa502a78613a738171a2b05daf24b5140d9570e1202f2e87a2"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.6/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "509d362d6c579b3b3845a570255e9b32953f1fc2a1e8ef9130ea2eb002f85ab7"
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
