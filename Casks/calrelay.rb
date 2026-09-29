cask "calrelay" do
  version "1.3.0"
  sha256 "7fe138f22ec4f2799e4a1a4ab7e71c0a534e155a9fb73b52c727d5a26146a85d"

  url "https://github.com/ondrej-winter/calrelay/releases/download/v1.3.0/CalRelay-1.3.0-arm64.zip"
  name "CalRelay"
  desc "Relay availability blockers between calendars"
  homepage "https://github.com/ondrej-winter/calrelay"

  livecheck do
    skip "Releases are published by the CalRelay release workflow"
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "CalRelay.app"
end
