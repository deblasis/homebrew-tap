class Zioscp < Formula
  desc "Drop-in scp replacement in Zig: resumable, parallel, pipelined SFTP transfers"
  homepage "https://deblasis.github.io/zioscp-web/"
  version "0.6.0"
  # Prebuilt macOS binary (ssh backend; uses the system ssh that macOS ships).
  on_arm do
    url "https://github.com/deblasis/zioscp/releases/download/v0.6.0/zioscp-v0.6.0-aarch64-macos.tar.gz"
    sha256 "a5f9ad715fddfcb57e9633f0074a9b10a9859f92f2ee076e95a26adf52de35b7"
  end
  on_intel do
    url "https://github.com/deblasis/zioscp/releases/download/v0.6.0/zioscp-v0.6.0-x86_64-macos.tar.gz"
    sha256 "329f13d545a3546dbd95102edf5e7f86a00f78e459b1074b4efbe610b89df6d9"
  end

  def install
    bin.install Dir["zioscp-*/zioscp"].first => "zioscp"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/zioscp --help")
  end
end
