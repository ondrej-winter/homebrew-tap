cask "calrelay" do
  version "1.1.0"
  sha256 "97bb971d972b963ef8e53623f19c47c4ed88aabbe3092694ced7d6d3e4192fe5"

  url "https://github.com/ondrej-winter/calrelay/releases/download/v1.1.0/CalRelay-1.1.0-arm64.zip"
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
