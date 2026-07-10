class Atra < Formula
  desc "A fast, modern HTTP client CLI with load testing and flow runner"
  homepage "https://atrahasis.dev"
  version "1.2.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/atrahasisdev/cli-releases/releases/download/v1.2.0/atra-aarch64-apple-darwin.tar.gz"
      sha256 "c613581733d536bd1007a927ac29b38a0f8d9ee49ea814786cd9e36a78606ea9"
    else
      url "https://github.com/atrahasisdev/cli-releases/releases/download/v1.2.0/atra-x86_64-apple-darwin.tar.gz"
      sha256 "74883a16d8c2dbff2452d6ccd8d81cc44238a39ccd2c329b5b9c6d6e82040d6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/atrahasisdev/cli-releases/releases/download/v1.2.0/atra-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0ec26804c5cfcabf827aeac32e33412f8806545736d0f1e149b96b3258aae27"
    else
      url "https://github.com/atrahasisdev/cli-releases/releases/download/v1.2.0/atra-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8223a851cfeef824e8b1de9adc07bb98482fc1c57b0742e15ebc8847302bae0a"
    end
  end

  def install
    bin.install "atra"
  end

  test do
    assert_match "atra #{version}", shell_output("#{bin}/atra --version")
  end
end
