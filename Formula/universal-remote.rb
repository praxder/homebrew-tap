class UniversalRemote < Formula
  desc "Local, terminal-based universal TV remote"
  homepage "https://github.com/praxder/universal-remote"
  # PLACEHOLDER until the first release. The release pipeline's `tap` job
  # (praxder/universal-remote .github/workflows/release.yml) rewrites the version
  # in `url`, the `version` line, and the `sha256` line below on every release.
  # `brew install` will NOT work until that first rewrite lands a real asset +
  # checksum.
  url "https://github.com/praxder/universal-remote/releases/download/v1.1.0/universal-remote-macos-arm64.tar.gz"
  version "1.1.0"
  sha256 "db3d21d2a33fae07930de76e6a182fc278024010a937b9049a0d2e779a1c836c"
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
