cask "bigexport" do
  version :latest
  sha256 :no_check

  url "https://github.com/dautovri/gotoapplemaps-bigexport/releases/latest/download/BigExport-latest.dmg"
  name "BigExport"
  desc "Import thousands of saved places from Google Maps, CSV, or KML into Apple Maps"
  homepage "https://gotoapplemaps.com"

  app "BigExport.app"

  zap trash: [
    "~/Library/Preferences/com.GoToAppleMaps.BigExport.plist",
  ]
end
