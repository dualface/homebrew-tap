class Ullage < Formula
  desc "Local daemon and CLI for AI subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.1/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "c37342a1ee365353a4b151e87c871147efbde00d72de5d9be6be9917a4df95d3"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.1/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "1b7a8c76cd1e75ea892f583f7faa2827c34d1ac4fc2fd6aafd4ce2566cd0401e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.1/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5bd356340cbf24c134521d89986aeab058f511af2b7f4e33c16fcbc125b4c495"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.1/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5a42a3b00cc9b540741e87f6b8a6d20ee29e9af5f7ef7d536f7f4a08148167c"
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
