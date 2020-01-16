# my.vim
## Personal VIM configurations

This is an effort for creating a sustainable NeoVIM configuration.
I actually use it for my own development with Python and it will be an eternal Work in Progress.

Unfortunately the standard VIM/NVIM plugin bundles, like SpaceVim and VIM Bootstrap has a lot of configurations that are unuseful/hard to understand.

I actually was working with SpaceVim, but due to some issues with my autocomplete, python support, I get rid of Spacevim and start my own configurations.

## How my file was generated?

I planned to create a single init.vim with the most used plugins and, I promisse, create a simple tutorial showing how to use it.

## Core features

I planned to create a config file with:

* A minimalist Plugin handler (Vim Plugged);
* Nerdtree - A File manager
* A fancy theme
* Some other handy stuff

# Using it

* First, download the latest version of neovim https://github.com/neovim/neovim/wiki/Installing-Neovim;
* Second, clone this repo somewhere else;
* create a symlink pointing this repo init.vim to `~/.config/nvim/init.vim`.
* run nvim and trigger the `:PlugInstall`

# Help needed

If you discover any useful tweak or something related, please let me know by creating a git issue. I will be glad to help and enhance this config file.
