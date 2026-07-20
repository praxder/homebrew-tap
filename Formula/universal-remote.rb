class UniversalRemote < Formula
  desc "Local, terminal-based universal TV remote"
  homepage "https://github.com/praxder/universal-remote"
  # PLACEHOLDER until the first release. The release pipeline's `tap` job
  # (praxder/universal-remote .github/workflows/release.yml) rewrites the version
  # in `url`, the `version` line, and the `sha256` line below on every release.
  # `brew install` will NOT work until that first rewrite lands a real asset +
  # checksum.
  url "https://github.com/praxder/universal-remote/releases/download/v1.0.0/universal-remote-macos-arm64.tar.gz"
  version "1.0.0"
  sha256 "d36b167dfd006986950e2e8e04e1a430578ecd30a88832a7eaa5d93c16c5310d"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "universal-remote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/universal-remote --version")
  end
end
