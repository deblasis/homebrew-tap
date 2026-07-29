class Zioscp < Formula
  desc "Drop-in scp replacement in Zig: resumable, parallel, pipelined SFTP transfers"
  homepage "https://deblasis.github.io/zioscp-web/"
  version "0.7.3"
  # Prebuilt macOS binary (ssh backend; uses the system ssh that macOS ships).
  on_arm do
    url "https://github.com/deblasis/zioscp/releases/download/v0.7.3/zioscp-v0.7.3-aarch64-macos.tar.gz"
    sha256 "67333dff7e193870ac3446346d8c198ba6fd5f27f23fa10f8d50fe49c84dbdd9"
  end
  on_intel do
    url "https://github.com/deblasis/zioscp/releases/download/v0.7.3/zioscp-v0.7.3-x86_64-macos.tar.gz"
    sha256 "abfdec84778950df5da605c7a92faf96a4e503a5e0c63317ccbc1e96b4fbd9ef"
  end

  def install
    bin.install "zioscp"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/zioscp --help")
  end
end
