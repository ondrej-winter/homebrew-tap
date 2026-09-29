# frozen_string_literal: true

class Calrelay < Formula
  desc "Relay availability blockers between calendars"
  homepage "https://github.com/ondrej-winter/calrelay"
  url "https://github.com/ondrej-winter/calrelay/releases/download/v1.2.0/calrelay-1.2.0-arm64.tar.gz"
  version "1.2.0"
  sha256 "44bfd0f5bbd9c8817a11888c9160c82a83e7479ddfbf32734a731a978f0fbeb6"
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
