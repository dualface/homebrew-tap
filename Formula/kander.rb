class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.0/kander-darwin-arm64.tar.gz"
      sha256 "504637afa766c7d47d400e5078616249bf23084fb88546d2df04807ece9fec43"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.0/kander-darwin-amd64.tar.gz"
      sha256 "67d6da9a48b52dce7bfd28444ef6c8af8b7e58755586527bc255d7cbb03399c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.8.0/kander-linux-arm64.tar.gz"
      sha256 "5e254ce429af0060dbd727bd8660bb34a91679d298597277a9c9f08bc073b3d0"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.8.0/kander-linux-amd64.tar.gz"
      sha256 "acc19b2917a53b053a32951c46f3cd0d96c454f6f99e44fd861ee0ea1c692872"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.8.0", shell_output("#{bin}/kander version").strip
  end
end
