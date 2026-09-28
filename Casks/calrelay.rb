cask "calrelay" do
  version "1.1.1"
  sha256 "234c1d6a1c99a5ddcf90c209e5c39b33c698ec9c56e50dd78808cfcd8f1cb43f"

  url "https://github.com/ondrej-winter/calrelay/releases/download/v1.1.1/CalRelay-1.1.1-arm64.zip"
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
