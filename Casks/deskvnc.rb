cask "deskvnc" do
  version "0.27.11"

  sha256 "d9fe3b01278f8a1e17c4f22e6819fb7c568dd791d6aca38791307da33f765dd5"

  url "https://github.com/psmux/DeskVNC/releases/download/v#{version}/DeskVNCViewer_#{version}_universal.dmg"
  name "DeskVNC"
  desc "Native desktop client for VNC, RDP and SSH, with an MCP server for AI agents"
  homepage "https://github.com/psmux/DeskVNC"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "DeskVNCViewer.app"

  zap trash: [
    "~/Library/Application Support/DeskVNCViewer",
    "~/Library/Preferences/com.deskvnc.viewer.plist",
    "~/Library/Caches/com.deskvnc.viewer",
    "~/Library/Logs/DeskVNCViewer",
  ]
end
