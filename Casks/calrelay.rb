cask "calrelay" do
  version "1.0.0"
  sha256 "0d1457df323c2edc957bdf9dcecf42807c470eb38831d2eea6b200b8e5145b36"

  url "https://github.com/ondrej-winter/calrelay/releases/download/v1.0.0/CalRelay-1.0.0-arm64.zip"
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
