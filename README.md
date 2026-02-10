# rcFiles

Folder with my personal linux configuration files. 

## dependencies
- stow
- ripgrep
- npm (required for pyright LSP)
- xclip (required for tmux-yank plugin)

## rc files Usage

The recommended way to use this package is to clone it onto the root folder and run `stow .` to create symbolic links in the root folder pointing to the files in the repo.


## system_config.bash Usage

* Sets vim as the default console editor.
* Adds colors to the text in the terminal.
* Adds git/svn information of the current folder

To use it, add this line in ~/.bashrc
`source .system_config.bash`


## Notes
- To activate the new them in tmux, press: prefix + I
- The tmux and nvim themes need one of the [nerdfonts](https://www.nerdfonts.com/font-downloads)

## Troubleshooting

- The following error shows up when running nvim:
```
Error detected while processing ~/rcFiles/.config/nvim/init.lua:
E5113: Error while calling lua chunk: ~/.config/nvim/init.lua:77: attempt to index field 'keymap' (a nil value)
```

**Solution:**
Upgrade neovim to the latest version.
```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```
- Stylua failed to install:

**Solution:**
Install unzip
```
sudo apt install unzip
```
