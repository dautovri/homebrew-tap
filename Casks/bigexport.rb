cask "bigexport" do
  version "1.0.0-rc.1"
  sha256 "3e5bba1ea8f8ce387a98751d18020556f83375ad38b9d7816165c600aa9f1d0d"

  url "https://github.com/dautovri/gotoapplemaps-bigexport/releases/download/v#{version}/BigExport-#{version}.dmg"
  name "BigExport"
  desc "Import thousands of saved places from Google Maps, CSV, KML, GPX into Apple Maps"
  homepage "https://gotoapplemaps.com"

  app "BigExport.app"

  caveats <<~EOS
    This release candidate is signed but not yet notarized.
    If Gatekeeper blocks the first launch: right-click BigExport.app → Open.
  EOS

  zap trash: [
    "~/Library/Preferences/com.GoToAppleMaps.BigExport.plist",
  ]
end
