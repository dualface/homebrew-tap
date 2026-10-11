class Ullage < Formula
  desc "Local daemon and CLI for AI subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.2/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "ff72b8f935a45005ba6682c6e587dbe461a370738c8bcc5a65304578410ba096"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.2/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "c2a2a0e278849f07aa15ff13f2e2156da7e61bec2eaf65a6bd448f520cb40d14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.2/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ef58ca99795204a64ad10ed47fa753c37d451f069422d625cab6e82487244b8"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.2/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4692cdfbb1dc235753541f167ed03fd3ae62fd0d0a93bc493c6bfe91f682ba94"
    end
  end

  def install
    bin.install "ullage"
  end

  post_install_steps do
    # Stop first so an upgrade bootstraps the new Cellar keg. kickstart of a
    # still-loaded job would keep the previous ProgramArguments.
    # must_succeed: false and print_stderr: false together are the declarative
    # quiet_system: a missing GUI session or systemd user bus must not fail
    # brew install nor spam the daemon's stderr. The steps DSL has no
    # ohai/conditional opoo, so caveats carry the recovery hint.
    run "ullage", args: ["daemon", "stop"], base: :bin, must_succeed: false, print_stderr: false
    run "ullage", args: ["daemon", "install"], base: :bin, must_succeed: false, print_stderr: false
    run "ullage", args: ["daemon", "start"], base: :bin, must_succeed: false, print_stderr: false
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
