class Vyer < Formula
  desc "Warm, local-first code-context engine for AI coding agents (MCP server)"
  homepage "https://github.com/chirayuoli/vyer"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.1/vyer-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "cef8ee942cdeb518ef807c44f317f1752047535e31c7e12c75fa6dfb27b9b66f"
    end
    # Intel macOS prebuilt is pending (GitHub's macos-13 runner queue); use `cargo install
    # --git https://github.com/chirayuoli/vyer vyer-server` on Intel Macs until it lands.
  end

  on_linux do
    on_arm do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.1/vyer-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85966e8f01f696120e944d0febbd864e532b9adb14c0a18d973ff977b79f97a8"
    end
    on_intel do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.1/vyer-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89e0dbf8e43335dfc590f3ad9e295b0022057d2e3da797b2eee77e32d167a5d8"
    end
  end

  def install
    bin.install "vyer"
  end

  test do
    assert_match "vyer", shell_output("#{bin}/vyer version")
  end
end
