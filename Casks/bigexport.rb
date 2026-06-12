cask "bigexport" do
  version "1.0.0-rc.1"
  sha256 "cf8769c057a7072318ea908b37bf11a7d33244f9aa57c3b2c0bf5302f7a7488e"

  url "https://github.com/dautovri/gotoapplemaps-bigexport/releases/download/v#{version}/BigExport-#{version}.dmg"
  name "BigExport"
  desc "Import thousands of saved places from Google Maps, CSV, KML, GPX into Apple Maps"
  homepage "https://gotoapplemaps.com"

  app "BigExport.app"

  zap trash: [
    "~/Library/Preferences/com.GoToAppleMaps.BigExport.plist",
  ]
end
