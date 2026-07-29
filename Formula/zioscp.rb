class Zioscp < Formula
  desc "Drop-in scp replacement in Zig: resumable, parallel, pipelined SFTP transfers"
  homepage "https://deblasis.github.io/zioscp-web/"
  version "0.7.0"
  # Prebuilt macOS binary (ssh backend; uses the system ssh that macOS ships).
  on_arm do
    url "https://github.com/deblasis/zioscp/releases/download/v0.7.0/zioscp-v0.7.0-aarch64-macos.tar.gz"
    sha256 "f6b40f5fe373516f72fa83eb893a79f6ccf79aa45584af293abab58d4a2d124f"
  end
  on_intel do
    url "https://github.com/deblasis/zioscp/releases/download/v0.7.0/zioscp-v0.7.0-x86_64-macos.tar.gz"
    sha256 "53bca5325b0118ec44cd07f26198dac76b753cd3a0d6d5263ed88977e07bf8aa"
  end

  def install
    bin.install "zioscp"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/zioscp --help")
  end
end
