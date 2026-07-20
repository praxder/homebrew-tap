class UniversalRemote < Formula
  desc "Local, terminal-based universal TV remote"
  homepage "https://github.com/praxder/universal-remote"
  # PLACEHOLDER until the first release. The release pipeline's `tap` job
  # (praxder/universal-remote .github/workflows/release.yml) rewrites the version
  # in `url`, the `version` line, and the `sha256` line below on every release.
  # `brew install` will NOT work until that first rewrite lands a real asset +
  # checksum.
  url "https://github.com/praxder/universal-remote/releases/download/v1.1.1/universal-remote-macos-arm64.tar.gz"
  version "1.1.1"
  sha256 "559cf9ca15d7d5ca62c9b16898cf7887899c51d336c76b2e94d071d709c34b7d"
  license "MIT"

  depends_on arch: :arm64

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"universal-remote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/universal-remote --version")
  end
end
