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
```curl -fsSL https://install.determinate.systems/nix | sh -s -- install```
<br>Select No and install from NixOS

After the installer finishes, open a **new terminal** or run  
`exec $SHELL` to refresh your `$PATH`.

## 2. Create & apply your package set
```bash
#add wget to your env temporarily to install our config
nix-shell -p wget

# Grab the sample file
wget https://raw.githubusercontent.com/fisherrjd/nix-basic/refs/heads/main/cfg.nix

# Install everything listed inside
nix-env -i -f ~/cfg.nix


# Post install refresh
hms
```

# Advanced Usage
https://github.com/jpetrucciani/nix
<br>https://github.com/kwbauson/cfg
<br>https://github.com/benaduggan/nix
<br>https://github.com/fisherrjd/nix

