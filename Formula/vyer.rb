class Vyer < Formula
  desc "Warm, local-first code-context engine for AI coding agents (MCP server)"
  homepage "https://github.com/chirayuoli/vyer"
  version "0.1.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.4/vyer-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "e6e24666cdbc05f750fb6c3cd7b5495cd90373e269918e8ca73f045033bda9ec"
    end
    # Intel macOS prebuilt is intentionally not shipped (GitHub's macos-13 runner queue is
    # unreliable). On Intel Macs install from source instead:
    #   cargo install --git https://github.com/chirayuoli/vyer vyer-server
  end

  on_linux do
    on_arm do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.4/vyer-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f12c118e59582fc1d4efd40d6ee95aca59dcf936885585dc4f4114eac9487893"
    end
    on_intel do
      url "https://github.com/chirayuoli/vyer/releases/download/v0.1.4/vyer-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d92bbefdc550b864e0e49faa3bc1cbbf9ee4d7373e4e8d78aa4389ce162f600c"
    end
  end

  def install
    bin.install "vyer"
  end

  test do
    assert_match "vyer", shell_output("#{bin}/vyer version")
  end
end
