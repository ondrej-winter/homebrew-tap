# frozen_string_literal: true

class Calrelay < Formula
  desc "Relay availability blockers between calendars"
  homepage "https://github.com/ondrej-winter/calrelay"
  url "https://github.com/ondrej-winter/calrelay/releases/download/v1.0.1/calrelay-1.0.1-arm64.tar.gz"
  version "1.0.1"
  sha256 "aac51c4659a6d97636be1a5d2801689caf7871075d13f4d49f8f325b202ae935"
  license "MIT"

  livecheck do
    skip "Releases are published by the CalRelay release workflow"
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "calrelay"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/calrelay --version").strip
    assert_match "USAGE:", shell_output("#{bin}/calrelay --help")
  end
end
