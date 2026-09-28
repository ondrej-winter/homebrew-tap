# frozen_string_literal: true

class Calrelay < Formula
  desc "Relay availability blockers between calendars"
  homepage "https://github.com/ondrej-winter/calrelay"
  url "https://github.com/ondrej-winter/calrelay/releases/download/v1.1.0/calrelay-1.1.0-arm64.tar.gz"
  version "1.1.0"
  sha256 "3a43a723277db4299493c03a472cc1a93ab0b58ddfdb3bb2098cfd5e6529dd31"
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
