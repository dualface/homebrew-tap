class Ullage < Formula
  desc "Local daemon and CLI for AI subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.4/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "9b67b1824f9c9ea30a414597847506949368f4989a8ae16a427897ffab57c207"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.4/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "4b2594c25023af70dd2f75300b4e685082d88e2ea67eaa1ee18c044a8a7f0872"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.4/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "044bd22395b78a80050bf7e7903c1a7e4fbfd62df6ca4bcdb26bcf2beb2e972d"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.4/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6d2f23816a0c730ff2132bc594135a992cc47f4b83fc5866a7135202585101d"
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
