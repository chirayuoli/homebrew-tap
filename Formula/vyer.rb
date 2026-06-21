class Vyer < Formula
  desc "Warm, local-first code-context engine for AI coding agents (MCP server)"
  homepage "https://github.com/chirayuoli/vyer"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.0/vyer-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "97860a805f7b8b1d572ae3f42b69fbfc403bf20f839143e3846fc0923186fc47"
    end
    # Intel macOS prebuilt is pending (GitHub's macos-13 runner queue); use `cargo install
    # --git https://github.com/chirayuoli/vyer vyer-server` on Intel Macs until it lands.
  end

  on_linux do
    on_arm do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.0/vyer-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cf4d00a0b7168d13e3ffd7f1ea9b0d4a7708ee59b6b55eac75a6b9a1e57a27e3"
    end
    on_intel do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.0/vyer-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9885f570ece65133af21cc8aeb423d8e340ec5ca1a4c0761a50f2e86d8300c16"
    end
  end

  def install
    bin.install "vyer"
  end

  test do
    assert_match "vyer", shell_output("#{bin}/vyer version")
  end
end
