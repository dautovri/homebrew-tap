cask "bigexport" do
  version "1.0.0"
  sha256 "ba1399bbe986b3ff8c1361d4ed2334e197c46c6c2f13a143d3c58c0d8b65f95a"

  url "https://github.com/dautovri/gotoapplemaps-bigexport/releases/download/v#{version}/BigExport-#{version}.dmg"
  name "BigExport"
  desc "Import thousands of saved places from Google Maps, CSV, KML, GPX into Apple Maps"
  homepage "https://gotoapplemaps.com"

  app "BigExport.app"

  zap trash: [
    "~/Library/Preferences/com.GoToAppleMaps.BigExport.plist",
  ]
end
