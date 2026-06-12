cask "bigexport" do
  version "1.0.1"
  sha256 "2fcae689ac13dccf8c9f3dc9658586bbd858acea5e5af7a4a1d1dc4b4851c875"

  url "https://github.com/dautovri/gotoapplemaps-bigexport/releases/download/v#{version}/BigExport-#{version}.dmg"
  name "BigExport"
  desc "Import thousands of saved places from Google Maps, CSV, KML, GPX into Apple Maps"
  homepage "https://gotoapplemaps.com"

  app "BigExport.app"

  zap trash: [
    "~/Library/Preferences/com.GoToAppleMaps.BigExport.plist",
  ]
end
