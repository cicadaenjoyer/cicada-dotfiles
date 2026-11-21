# cicada-dotfiles

My config files, managed with [GNU Stow](https://www.gnu.org/software/stow/). Written for a CachyOS + Hyprland + Noctalia setup.

## What's in here

Each top-level folder is a Stow package. Inside it, files are laid out exactly as they sit
under `$HOME`

| Package | What it sets up | Needs |
|---|---|---|
| `hypr` | Hyprland (Lua config) | `hyprland` |
| `noctalia` | Noctalia shell: bar, widgets, session menu, theming | `noctalia` |
| `fish` | fish shell (loads CachyOS's fish config if it's installed) | `fish`, `cachyos-fish-config` |
| `kitty` | kitty terminal | `kitty` |
| `*-shogun` | extras only for my desktop (hostname `shogun`) | see below |

## Setup

### 1. Install stow and clone

```fish
yay stow
git clone https://github.com/cicadaenjoyer/cicada-dotfiles.git ~/Projects/cicada-dotfiles
cd ~/Projects/cicada-dotfiles
```

### 2. Move existing configs out of the way

Stow won't overwrite real files, and a fresh CachyOS install already has some of these.
Back them up first:

```fish
mkdir -p ~/config-backup
mv ~/.config/hypr                 ~/config-backup/hypr
mv ~/.config/noctalia/config.toml ~/config-backup/noctalia-config.toml
mv ~/.config/fish/config.fish     ~/config-backup/config.fish
mv ~/.config/kitty/kitty.conf     ~/config-backup/kitty.conf
```

### 3. Stow

**Always run stow from the repo root.** Stow only reads `.stowrc` from the current folder, and
from anywhere else the links end up in the wrong place.

```fish
stow -v hypr noctalia fish kitty
```

On my desktop, also add the shogun packages:

```fish
stow -v noctalia-shogun kitty-shogun
```

### 4. Restart things

- **Hyprland:** `hyprctl reload`, then `hyprctl configerrors` (should print nothing)
- **Noctalia:** restart it (log out and back in, or `pkill noctalia; noctalia -d`). If its config folder
  was moved while it was running, it keeps showing the default bar until restarted.
- **kitty / fish:** open a new window

## How per-machine config works

Shared files hold what every machine needs. Machine-only bits are kept separate so other machines
never load them (e.g. Blue Archive themes that only exist on my desktop).

- **Hyprland:** `hyprland.lua` reads `/etc/hostname` and loads `config/<category>/<hostname>.lua`
  if that file exists (`autostart`, `monitors`, `environment`, `binds`). A machine without one just
  gets the shared config.
- **Noctalia, kitty:** both load every file in a folder (`~/.config/noctalia/*.toml`,
  `~/.config/kitty/host.d/*.conf`). Machine-only files live in a `<app>-<hostname>` package that's only
  stowed on that machine.
  