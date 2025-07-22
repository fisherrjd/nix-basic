# What is Nix?
[Nix](https://nixos.org) is a purely-functional package manager and build system that lets you declare entire environments in one file.  
The result is *reproducible*, *declarative*, and *reliable* systems—ideal for dotfiles, CI images, or a full-blown Linux distribution.

### 📚 Learning / Docs
- How Nix works: https://nixos.org/guides/how-nix-works/  
- First steps with `nix-shell`: https://nix.dev/tutorials/

---

# Quick-start: Nix as a Homebrew replacement
This repo contains a minimal `cfg.nix` that behaves like a `Brewfile`; edit it to install/uninstall packages.
<br>For finding new packages / settings refer to https://search.nixos.org/packages

## 1. Install Nix
| Platform | One-liner |
|---|---|
| **macOS** | `sh <(curl -L https://nixos.org/nix/install)` |
| **Linux** (or WSL) | `sh <(curl -L https://nixos.org/nix/install) --no-daemon` |

After the installer finishes, open a **new terminal** or run  
`exec $SHELL` to refresh your `$PATH`.

## 2. Create & apply your package set
```bash
# Grab the sample file
wget https://raw.githubusercontent.com/fisherrjd/nix-basic/refs/heads/main/cfg.nix

# Install everything listed inside
nix-env -i -f ~/cfg.nix
```
