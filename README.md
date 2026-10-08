# Homebrew tap for DeskVNC

A community Homebrew tap for [DeskVNC](https://github.com/psmux/DeskVNC), the
native desktop client for **VNC, RDP and SSH** written in Rust on Tauri 2, with
an MCP server (`dvv`) that lets an AI agent drive a remote session while a
person can take control back at any moment.

The upstream project lives at <https://github.com/psmux/DeskVNC>. This tap
mirrors the official release artifacts and adds verified checksums so you can
install with one command.

## Install

```sh
brew tap deepaash/homebrew-deskvnc
brew install --cask deskvnc
```

That installs **DeskVNCViewer.app** into `/Applications` on macOS. The
universal build supports both Apple Silicon and Intel Macs.

## What is in this tap

- `Casks/deskvnc.rb` installs the macOS app from the universal disk image.
- `Casks/deskvnc-windows.rb` fetches the signed Windows installer so you can
  copy it to a Windows machine.

## Windows

The Windows installer is shipped as a signed `NSIS` setup executable on the
release page. The latest artifact is:

- `DeskVNCViewer_0.27.11_x64-setup.exe`
- sha256: `78f7a34e8f4dfa06b09bae631c5f9d8ba6664581d06ad16c5a767e417f1dee3d`

Fetch it with this tap:

```sh
brew install --cask deepaash/homebrew-deskvnc/deskvnc-windows
```

Or download it directly from the
[release page](https://github.com/psmux/DeskVNC/releases/tag/v0.27.11) and run
it on the Windows machine.

## Linux

DeskVNC ships native packages for Linux on `x86_64`. The latest artifacts and
their verified checksums are:

- `DeskVNCViewer_0.27.11_amd64.deb`
  sha256: `1921acdea6358fcfa0c47438da1ff71a692b3ec72518341bd13a7027d365a091`
- `DeskVNCViewer-0.27.11-1.x86_64.rpm`
  sha256: `08096a40e5951feae081846f8f352d85ed1a9bc617796cc2e0b19cb35d36d3d0`
- `DeskVNCViewer_0.27.11_amd64.AppImage`
  sha256: `8263c77cbcafbaf1bdbe802581feb447c7ed4976db0f1868143334759503807d`

Install with your distribution's package manager, or run the AppImage
directly:

```sh
# Debian / Ubuntu
sudo dpkg -i DeskVNCViewer_0.27.11_amd64.deb
sudo apt-get install -f

# Fedora / RHEL
sudo dnf install ./DeskVNCViewer-0.27.11-1.x86_64.rpm

# AppImage
chmod +x DeskVNCViewer_0.27.11_amd64.AppImage
./DeskVNCViewer_0.27.11_amd64.AppImage
```

## The MCP server for AI agents

Every DeskVNC install ships the `dvv` MCP server. It lets an AI agent open a
saved machine, observe the screen, and send clicks and keystrokes over the
ordinary VNC, RDP or SSH connection. A person at the keyboard can take control
back at any moment.

Binary paths after install:

- macOS: `/Applications/DeskVNCViewer.app/Contents/MacOS/dvv`
- Windows: `%LOCALAPPDATA%\DeskVNCViewer\dvv.exe` or
  `C:\Program Files\DeskVNCViewer\dvv.exe`
- Linux: `/usr/bin/dvv`

Learn more at <https://github.com/psmux/DeskVNC>.
