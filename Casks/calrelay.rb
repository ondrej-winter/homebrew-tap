cask "calrelay" do
  version "1.0.1"
  sha256 "7d3321e92870cda9b72d4b2468ebcf8f7de13e03d4f4487af9e325572c349cbc"

  url "https://github.com/ondrej-winter/calrelay/releases/download/v1.0.1/CalRelay-1.0.1-arm64.zip"
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
