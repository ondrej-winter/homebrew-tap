# frozen_string_literal: true

class Calrelay < Formula
  desc "Relay availability blockers between calendars"
  homepage "https://github.com/ondrej-winter/calrelay"
  url "https://github.com/ondrej-winter/calrelay/releases/download/v1.0.3/calrelay-1.0.3-arm64.tar.gz"
  version "1.0.3"
  sha256 "fb8437ea8c018efcd9c93c6f88dade0e34b1bf973dfa206a3151dc90876b9612"
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
