cask "bigexport" do
  version "1.0.1"
  sha256 "5562fc61b3edc51f5c597d67be8208e747dda1650768518f6c4a9f7131071ae5"

  url "https://github.com/dautovri/gotoapplemaps-bigexport/releases/download/v#{version}/BigExport-#{version}.dmg"
  name "BigExport"
  desc "Import thousands of saved places from Google Maps, CSV, KML, GPX into Apple Maps"
  homepage "https://gotoapplemaps.com"

  app "BigExport.app"

  zap trash: [
    "~/Library/Preferences/com.GoToAppleMaps.BigExport.plist",
  ]
end
