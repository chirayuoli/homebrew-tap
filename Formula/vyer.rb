class Vyer < Formula
  desc "Warm, local-first code-context engine for AI coding agents (MCP server)"
  homepage "https://github.com/chirayuoli/vyer"
  version "0.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.2/vyer-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "f7160a57d57e59a4e342d5e46c4d0abc8a3d203f99795cee12ba00ecc693d29a"
    end
    # Intel macOS prebuilt is pending (GitHub's macos-13 runner queue); use `cargo install
    # --git https://github.com/chirayuoli/vyer vyer-server` on Intel Macs until it lands.
  end

  on_linux do
    on_arm do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.2/vyer-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a4fa715a96ec365965b9eb4dc0abd0c4f224234a52f13e392a9d352db1763b6d"
    end
    on_intel do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.2/vyer-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb912adadddd9e9c1226e36074a96232dedab00ecd04e3e32476b6a1f003bc6c"
    end
  end

  def install
    bin.install "vyer"
  end

  test do
    assert_match "vyer", shell_output("#{bin}/vyer version")
  end
end
