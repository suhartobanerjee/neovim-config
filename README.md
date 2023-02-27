# Neovim Config

This is my personal Neovim configuration. The installed plugins are

1. Packer
2. Telescope
3. Onedark colorscheme
4. Treesitter
5. Fugitive Git Wrapper
6. LSP-Zero
7. Nvim-R to make (Neo)Vim an R IDE!

To get started, first install Packer, which is the plugin installer. Install it from the bash script `packer_install.sh` in the root folder. A round of packer Sync should do the trick then, within nvim. 

It has all my remaps within the `./lua/remaps/` folder within lua folder, one file for each of the plugin and a global editor one. Same goes for options, contained in `./lua/opts/` folder. LSP settings are within `./lua/lsp/` folder.

To install new plugins, insert `use "user/repo-name"` in the `./lua/plugin_manager/packer.lua`!
