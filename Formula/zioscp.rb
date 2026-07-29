class Zioscp < Formula
  desc "Drop-in scp replacement in Zig: resumable, parallel, pipelined SFTP transfers"
  homepage "https://deblasis.github.io/zioscp-web/"
  version "0.7.2"
  # Prebuilt macOS binary (ssh backend; uses the system ssh that macOS ships).
  on_arm do
    url "https://github.com/deblasis/zioscp/releases/download/v0.7.2/zioscp-v0.7.2-aarch64-macos.tar.gz"
    sha256 "dc91bb6f3869dc09fe410e0c6a01d16ee775d3f193dbad714d74102f1c4a2cd4"
  end
  on_intel do
    url "https://github.com/deblasis/zioscp/releases/download/v0.7.2/zioscp-v0.7.2-x86_64-macos.tar.gz"
    sha256 "433345141570bc652d2929f6aa9ea65d087cba7f35c684ddc0205ff785316378"
  end

  def install
    bin.install "zioscp"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/zioscp --help")
  end
end
