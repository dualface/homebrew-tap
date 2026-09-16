class Ullage < Formula
  desc "Local daemon and CLI for Claude, ChatGPT, Grok, and Cursor subscription usage"
  homepage "https://github.com/dualface/ullage-cli"
  version "0.1.0"
  revision 1
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.0/ullage-aarch64-apple-darwin.tar.gz"
      sha256 "b5bc9d58d7299bbfdb685c1e88742771fceb2ad6ba08eaea2054d2f9e1df8ce7"
    end
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.0/ullage-x86_64-apple-darwin.tar.gz"
      sha256 "e796ba1f69bcf52f2da95a342f606ea90e27b662ecf9ab88fb2041a5135ad9d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dualface/ullage-cli/releases/download/v0.1.0/ullage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "90143062a0f0c520187fdf736f93d80a9ccc7024ede730c0afda36e0a3666b8a"
    end
  end

  def install
    bin.install "ullage"
  end

  test do
    assert_match "ullage 0.1.0", shell_output("#{bin}/ullage --version")
  end
end
