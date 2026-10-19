class Ullage < Formula
  desc "Local daemon and CLI for AI subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.5/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "ae2af745c6484b3e63549d64ef7c403f1ecc8ab35a8a4ea817770265c56b8e86"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.5/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "c71fc66efb180a9e7c30eba2b91b4a70809d1c3c37051ef14da7969dd16fe63a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.5/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "84921cc4e7bd162950a78b94d900d1fa79106dcf570500d4b9464ddf1caf4361"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.5/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ff9f75b2362396471b7e8edc491370d0c7a50da6ce0f3bfb63855b75aacf461"
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
