# frozen_string_literal: true

class Calrelay < Formula
  desc "Relay availability blockers between calendars"
  homepage "https://github.com/ondrej-winter/calrelay"
  url "https://github.com/ondrej-winter/calrelay/releases/download/v1.3.0/calrelay-1.3.0-arm64.tar.gz"
  version "1.3.0"
  sha256 "455b6df40916a58fc2069d0639cecbe4eb5f73099d725ffbf4a77f6279e6adb6"
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
