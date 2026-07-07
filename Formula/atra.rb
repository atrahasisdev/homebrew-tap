class Atra < Formula
  desc "A fast, modern HTTP client CLI with load testing and flow runner"
  homepage "https://atrahasis.dev"
  version "1.1.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/atrahasisdev/cli-releases/releases/download/v1.1.0/atra-aarch64-apple-darwin.tar.gz"
      sha256 "6a23814d5851556df64376e7e7fbd888107b35d1bd77ccb49d6c3638b418aaae"
    else
      url "https://github.com/atrahasisdev/cli-releases/releases/download/v1.1.0/atra-x86_64-apple-darwin.tar.gz"
      sha256 "543d28d1b6bd19c70c23c129bfef49b02fef78a310867a0348f43ac5c9e262fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/atrahasisdev/cli-releases/releases/download/v1.1.0/atra-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc0ef5a8ec352fe666c9ca770089a6d3bbe773f0ccc5d8523a17d3ea3a32529b"
    else
      url "https://github.com/atrahasisdev/cli-releases/releases/download/v1.1.0/atra-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e763402a304ab84e6391228292a481a33fa0e7224539f4321684a513a7f371d6"
    end
  end

  def install
    bin.install "atra"
  end

  test do
    assert_match "atra #{version}", shell_output("#{bin}/atra --version")
  end
end
