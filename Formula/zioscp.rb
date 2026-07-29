class Zioscp < Formula
  desc "Drop-in scp replacement in Zig: resumable, parallel, pipelined SFTP transfers"
  homepage "https://deblasis.github.io/zioscp-web/"
  version "0.6.0"
  # Prebuilt macOS binary (ssh backend; uses the system ssh that macOS ships).
  on_arm do
    url "https://github.com/deblasis/zioscp/releases/download/v0.6.0/zioscp-v0.6.0-aarch64-macos.tar.gz"
    sha256 "7d1ca2011efff6482667f6d966292f0c110c1c04d43978505e7d76c5ca76de6e"
  end
  on_intel do
    url "https://github.com/deblasis/zioscp/releases/download/v0.6.0/zioscp-v0.6.0-x86_64-macos.tar.gz"
    sha256 "13812c80159d5a6df7d3618e414fcb0d91665387110875e60420c7451f560830"
  end

  def install
    bin.install "zioscp"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/zioscp --help")
  end
end
