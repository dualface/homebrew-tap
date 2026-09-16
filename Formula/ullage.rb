class Ullage < Formula
  desc "Local daemon and CLI for Claude, ChatGPT, Grok, and Cursor subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  url "https://github.com/dualface/ullage-cli.git",
      tag:      "v0.1.0",
      revision: "fbd378fe2e4edf94d7ce8310969c65ca69d1a2a8"
  license "MIT"
  head "https://github.com/dualface/ullage-cli.git", branch: "main"

  depends_on "rust" => :build

  on_linux do
    depends_on "pkgconf" => :build
    depends_on "dbus"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/ullage-cli")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ullage --version")
  end
end
