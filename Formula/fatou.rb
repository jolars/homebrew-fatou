class Fatou < Formula
  desc "Language server, formatter, and linter for Julia"
  homepage "https://fatou.dev"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jolars/fatou/releases/download/v0.9.0/fatou-aarch64-apple-darwin.tar.gz"
      sha256 "e57a28f47f0fa9c5746f53468a5b6ed976129dd84a1f1b3be93615f80c6ef366"
    end
    on_intel do
      url "https://github.com/jolars/fatou/releases/download/v0.9.0/fatou-x86_64-apple-darwin.tar.gz"
      sha256 "8b455b198cac4ba11f529449141617762defa5a4016b959d42ae22ce8dd4511f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jolars/fatou/releases/download/v0.9.0/fatou-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1f4fe9cc44493c1ef9b2bdb78546e609349f8a3614eb7840e5d0a39a9e502cd5"
    end
    on_intel do
      url "https://github.com/jolars/fatou/releases/download/v0.9.0/fatou-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7743dc925f6967ccfe2592bae4435e1703fd20408d3e9379ec9d680eaf55b020"
    end
  end

  def install
    bin.install "fatou"
    man1.install Dir["man/*.1"]
    bash_completion.install "completions/fatou.bash"
    fish_completion.install "completions/fatou.fish"
    zsh_completion.install "completions/_fatou"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fatou --version")
  end
end