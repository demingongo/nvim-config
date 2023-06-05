# nvim-config

My nvim config files.

## Dependencies

- [vim-plug](https://github.com/junegunn/vim-plug)
- [ascii-image-converter](https://github.com/TheZoraiz/ascii-image-converter)
- [fzf](https://github.com/junegunn/fzf)

## How-to

Proceed to [Installation](#Installation) then [Configuration](#Configuration)

## Installation

### Manually (linux)

Install the [dependencies](#Dependencies). Clone the repository. Copy its directory `config/nvim` to `~/.config/`.
```sh
cp -r config/nvim ~/.config/
```

### From script (linux)

The repository contains a common script (install.sh) for Arch Linux and Fedora. 

First, [Node](https://nodejs.org/en/) is required. I recommend to install it from [nvm](https://github.com/nvm-sh/nvm).

Clone the repository. Execute the script that will install the config files and dependencies:
```sh
./install.sh
```

## Configuration

After the installation, run `nvim`. It might display errors and it's okay as the plugins need to be installed. Just run `:PlugInstall`. Another error might display because of `nvim-treesitter` and it's okay if the plugin was not already installed (See the `{'do': ':TSUpdate'}` argument). Just quit nvim (`:q`) and run it again (`nvim`). Plugins dependencies will be installing and once finished, you will be able to use neovim.

You might have to install fonts for `nvim-tree` to display icons.
See how to [install Hack nerd-fonts](https://github.com/ryanoasis/nerd-fonts#option-3-install-script) (the only ones you need for this).

## Plugins

List of plugins used:

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [barbar](https://github.com/romgrk/barbar.nvim)
- [feline](https://github.com/feline-nvim/feline.nvim)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [image](https://github.com/samodostal/image.nvim)
- [plenary](https://github.com/nvim-lua/plenary.nvim)
- [baleina](https://github.com/m00qek/baleia.nvim)
- [nvim-colorizer](https://github.com/norcalli/nvim-colorizer.lua)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [telescope-fzf-native](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [automaton](https://github.com/Dax89/automaton.nvim)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [cellular-automaton](https://github.com/mfussenegger/nvim-dap)
- [rust](https://github.com/rust-lang/rust.vim)
- [colorbuddy](https://github.com/tjdevries/colorbuddy.nvim)

color schemes:

- [catppuccin](https://github.com/catppuccin/nvim)
- [neobeans](https://github.com/mweisshaupt1988/neobeans.vim)
- [NeoSolarized](https://github.com/overcache/NeoSolarized)
- [tokyonight](https://github.com/folke/tokyonight.nvim)
- [gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
- [noirbuddy](https://github.com/jesseleite/nvim-noirbuddy)

