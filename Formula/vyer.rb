class Vyer < Formula
  desc "Warm, local-first code-context engine for AI coding agents (MCP server)"
  homepage "https://github.com/chirayuoli/vyer"
  version "0.1.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.3/vyer-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "60217397cdec7b3dd5d8cd9764e9383ba2d1221c9ffbdfa9138363377ff78969"
    end
    # Intel macOS prebuilt is intentionally not shipped (GitHub's macos-13 runner queue is
    # unreliable). On Intel Macs install from source instead:
    #   cargo install --git https://github.com/chirayuoli/vyer vyer-server
  end

  on_linux do
    on_arm do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.3/vyer-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f517caabd68ad4e74627f9d03fd539035ad5879e4b11a2ebf12dc0f670bc4e6"
    end
    on_intel do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.3/vyer-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce039fbe229a587b34148f7cf91af0e192afe26110db1888e75cad8479b90c20"
    end
  end

  def install
    bin.install "vyer"
  end

  test do
    assert_match "vyer", shell_output("#{bin}/vyer version")
  end
end
