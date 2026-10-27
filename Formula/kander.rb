class Kander < Formula
  desc "Kanban orchestration for multiple AI agents"
  homepage "https://github.com/dualface/kander"
  version "0.9.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.13/kander-darwin-arm64.tar.gz"
      sha256 "e22bb056ddc1d77ec2797bc44f05bbb0baed127b4e7eaf4d022265442b80d7cd"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.13/kander-darwin-amd64.tar.gz"
      sha256 "ff7151cedc83dabc0d6b785bb053aee066bd361f085dc45be6bb519efa736b8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dualface/kander/releases/download/v0.9.13/kander-linux-arm64.tar.gz"
      sha256 "b1909fef09f4f9e58b4bc8e919783f78c8fa876fd47c2f078805c77b8a54135a"
    end
    on_intel do
      url "https://github.com/dualface/kander/releases/download/v0.9.13/kander-linux-amd64.tar.gz"
      sha256 "de55a23983a1e82c366d2144d48fcf663ac45d575ef8611f60eae4773b7672b7"
    end
  end

  def install
    bin.install "kander"
  end

  test do
    assert_equal "kander 0.9.13", shell_output("#{bin}/kander version").strip
  end
end
