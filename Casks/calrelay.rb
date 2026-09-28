cask "calrelay" do
  version "1.0.3"
  sha256 "a201943daa9b0ca3baf50bd5f632768d699d1be5124cfb1a0d4eede776b0754b"

  url "https://github.com/ondrej-winter/calrelay/releases/download/v1.0.3/CalRelay-1.0.3-arm64.zip"
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
