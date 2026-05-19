class Atra < Formula
  desc "A fast, modern HTTP client CLI with load testing and flow runner"
  homepage "https://atrahasis.dev"
  version "1.0.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/atrahasisdev/cli-releases/releases/download/v1.0.0/atra-aarch64-apple-darwin.tar.gz"
      sha256 "1238d022f893df9a607619b14bd45c2dadd978c746af89db58ce1f28f1ca951b"
    else
      url "https://github.com/atrahasisdev/cli-releases/releases/download/v1.0.0/atra-x86_64-apple-darwin.tar.gz"
      sha256 "2d677bb292bcedd706120235a1d23949381fe16882f9cd06114144ba9a3b9559"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/atrahasisdev/cli-releases/releases/download/v1.0.0/atra-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "009cb51892e57e43a8f930e3d1cb971cc69a86752a211787169f77da674d0e32"
    else
      url "https://github.com/atrahasisdev/cli-releases/releases/download/v1.0.0/atra-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d191f8d306484b3ae4dca3b0313935b0de8fcf82de52c8622fec6bcacdd7584f"
    end
  end

  def install
    bin.install "atra"
  end

  test do
    assert_match "atra #{version}", shell_output("#{bin}/atra --version")
  end
end
