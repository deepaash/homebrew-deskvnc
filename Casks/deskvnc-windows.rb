cask "deskvnc-windows" do
  version "0.27.11"

  sha256 "78f7a34e8f4dfa06b09bae631c5f9d8ba6664581d06ad16c5a767e417f1dee3d"

  url "https://github.com/psmux/DeskVNC/releases/download/v#{version}/DeskVNCViewer_#{version}_x64-setup.exe"
  name "DeskVNC for Windows"
  desc "Windows installer for DeskVNC, the native VNC, RDP and SSH client with an MCP server for AI agents"
  homepage "https://github.com/psmux/DeskVNC"

  livecheck do
    url :url
    strategy :github_latest
  end

  artifact "DeskVNCViewer_#{version}_x64-setup.exe",
           target: "DeskVNCViewer_#{version}_x64-setup.exe"

  zap trash: [
    "~/Library/Caches/Homebrew/downloads/DeskVNCViewer_#{version}_x64-setup.exe",
  ]
end
