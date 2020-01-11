Vim Python Pro Config.
===================

Vim Config for python pro developers


![Vim Python Pro Config](https://i.ibb.co/wr1QP4D/Captura-de-pantalla-de-2020-01-10-15-53-14.png)



Requirements
============

* Vim 7.4+ or NeoVim 0.4+


Install
========

# Vim 

1) Install [Plug Package Manager](https://github.com/junegunn/vim-plug)

2) Clone

```
   git clone https://github.com/viktorvillalobos/vim-python-pro-config.git && cd vim-python-pro-config
```

3) If you use VIM

```
   cp ini.vim ~/.vimrc
```

4) Open vim and execute PlugInstall command

```
   :PlugInstall
```

# NeoVim


1) Install [Plug Package Manager](https://github.com/junegunn/vim-plug)

2) Clone

```
   git clone https://github.com/viktorvillalobos/vim-python-pro-config.git && cd vim-python-pro-config
```

3) If you use VIM

```
   cp ini.vim ~/.config/nvim/
```

4) Open vim and execute PlugInstall command

```
   :PlugInstall
```


DevIcons (Optional)
====================

### DevIcons (Optional)
This plugin is used to show file icons in NerdTree and requires additional steps to install:
* Must install a patched font that contains required glyphs: 
    * [Arch Linux](https://aur.archlinux.org/packages/nerd-fonts-complete/)
    * [Everyone Else](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts)
  * Set vim encoding to UTF-8
    ```
    set encoding=utf8
    ```
  * Set vim font to NerdFont
    ```
    set guifont=<FONT_NAME> <FONT_SIZE>
    ```
  * Add glyphs to Airline
    ```
    let g:airline_powerline_fonts = 1
* If you dont want this feature simply remove this plugin from your vimrc and execute :PluginUpdate in vim, for proper removal delete the devicons plugin folder



Enjoy!.

victorvillalobos@outlook.com
