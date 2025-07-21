# Usage
This directory contains a basic cfg.nix to begin learning nix

## How to do the NIX tings

### 1. Install Nix

| Platform | One-liner |
|---|---|
| **macOS** | `sh <(curl -L https://nixos.org/nix/install)` |
| **WSL (Windows Subsystem for Linux)** | `sh <(curl -L https://nixos.org/nix/install) --no-daemon` |
| **Linux (any distro)** | Same as WSL |

After installation, open a **new shell** or run `exec $SHELL` so Nix binaries are on `$PATH`.

### 2. Create your `cfg.nix`

```bash
wget https://raw.githubusercontent.com/fisherrjd/nix-basic/refs/heads/main/cfg.nix
nix-env -i -f ~/cfg.nix
