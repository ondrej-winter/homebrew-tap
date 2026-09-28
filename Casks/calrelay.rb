cask "calrelay" do
  version "1.0.2"
  sha256 "e2e5868fd1727bdffc65a68f0aaaebc7439c85857b495e17a18906a174cd2985"

  url "https://github.com/ondrej-winter/calrelay/releases/download/v1.0.2/CalRelay-1.0.2-arm64.zip"
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
