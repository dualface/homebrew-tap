class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.8.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.9/kander-darwin-arm64.tar.gz"
      sha256 "f810302c0e08ca19653d1be8ee96ca5da6885061479e8e010f976410b5b7fca0"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.9/kander-darwin-amd64.tar.gz"
      sha256 "f107fdd7468478c96ed7c8508f43d3abb8c5d152693bcc7f71397a9c1e2ed8c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.9/kander-linux-arm64.tar.gz"
      sha256 "fea5864e9357e94a58cf81cbb0829eb45aee65b530bcd9839d22aef29a8a47e5"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.9/kander-linux-amd64.tar.gz"
      sha256 "02707e2e640009a6277bdf1eb0094d02e34654e74a05a6fdb94196ae91c0609e"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.8.9", shell_output("#{bin}/kander version").strip
  end
end
