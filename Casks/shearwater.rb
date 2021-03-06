cask "shearwater" do
  version "3.1.5"
  sha256 "0ccb805ae6cece4ea5eb69b5d32afc49360569e93d2def1691da6f06236d655d"

  url "https://www.shearwater.com/wp-content/downloads/ShearwaterDesktopInstaller_#{version}.dmg"
  appcast "https://www.shearwater.com/downloads/shearwater-desktop-download/"
  name "Shearwater Desktop"
  homepage "https://www.shearwater.com/"

  depends_on cask: "adobe-air"

  app "Shearwater Research/Shearwater Desktop.app"

  uninstall quit: "com.shearwaterresearch.divebook"

  zap trash: [
    "~/Library/Caches/com.shearwaterresearch.divebook",
    "~/Library/Preferences/com.shearwaterresearch.divebook",
    "~/Library/Saved Application State/com.shearwaterresearch.divebook.savedState",
  ]
end
