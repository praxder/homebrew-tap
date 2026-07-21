class UniversalRemote < Formula
  desc "Local, terminal-based universal TV remote"
  homepage "https://github.com/praxder/universal-remote"
  # PLACEHOLDER until the first release. The release pipeline's `tap` job
  # (praxder/universal-remote .github/workflows/release.yml) rewrites the version
  # in `url`, the `version` line, and the `sha256` line below on every release.
  # `brew install` will NOT work until that first rewrite lands a real asset +
  # checksum.
  url "https://github.com/praxder/universal-remote/releases/download/v1.2.0/universal-remote-macos-arm64.tar.gz"
  version "1.2.0"
  sha256 "dc9b69eee0dd02a85dd75f52eba30fa82a57ecffd6db5fe284fcbf5d85332ecb"
  license "MIT"

  depends_on arch: :arm64

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"universal-remote"
    # Short alias: `ur` resolves to the same launcher.
    bin.install_symlink libexec/"universal-remote" => "ur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/universal-remote --version")
    assert_match version.to_s, shell_output("#{bin}/ur --version")
  end
end
