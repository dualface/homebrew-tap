class Ullage < Formula
  desc "Local daemon and CLI for AI subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.3/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "cdb64a3cdbc097c036db06363fc079f50eaa06801edc3db3be731c6f7803e1e9"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.3/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "267da2f66e218ce9dcef57a0f00f851c13fc0c6faefc75ab46c93395a46c8b57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.3/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5edff9236638e386ec122ac64ad305b840f9f48645e9aa2bb028615439b7d304"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.3/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b38d22e691afe3ea42a3b854636588c883c0fa2f107ee7129fcb802fe81423be"
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
