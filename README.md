# rcFiles

Folder with my personal linux configuration files. 

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
- The catpuccin theme needs one of the [nerdfonts](https://www.nerdfonts.com/font-downloads)
