cask "calrelay" do
  version "1.2.0"
  sha256 "5a67f0d9121274ebaf9bc78ea470c73be514e44aed2498772e42daff3d453ad0"

  url "https://github.com/ondrej-winter/calrelay/releases/download/v1.2.0/CalRelay-1.2.0-arm64.zip"
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
