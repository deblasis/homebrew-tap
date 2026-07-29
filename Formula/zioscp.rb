class Zioscp < Formula
  desc "Drop-in scp replacement in Zig: resumable, parallel, pipelined SFTP transfers"
  homepage "https://deblasis.github.io/zioscp-web/"
  version "0.7.1"
  # Prebuilt macOS binary (ssh backend; uses the system ssh that macOS ships).
  on_arm do
    url "https://github.com/deblasis/zioscp/releases/download/v0.7.1/zioscp-v0.7.1-aarch64-macos.tar.gz"
    sha256 "b3fe43125e3d28f6d427a3a43c02e79b3e852a2d3effd3b47e5dcb7e6c9d037b"
  end
  on_intel do
    url "https://github.com/deblasis/zioscp/releases/download/v0.7.1/zioscp-v0.7.1-x86_64-macos.tar.gz"
    sha256 "8f77bc0081cbd69c2da6089e7ae11569dbb3ceec0dace1ccee372a519d26ed14"
  end

  def install
    bin.install "zioscp"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/zioscp --help")
  end
end
