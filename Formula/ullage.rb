class Ullage < Formula
  desc "Local daemon and CLI for AI subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.0/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "99e86249765cc269c5839a914867991d16eca4def4a62f2340033dd99d68ba77"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.0/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "885cec8adaf66487adfc7e8b9fd45c773a080732885304c6c2a8cd51f71afeef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.0/ullage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5d6dd4c116de4deb595e8028d5e3672dd1d93766ce5f2d5d6262bd10ba26da9"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.3.0/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "527e96a3b8003fc21f82b2944590f11fbb2ae781fdddcc8e3ddf8f6c6f4701bf"
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
