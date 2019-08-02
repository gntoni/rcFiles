# rcFiles

Folder with my personal linux configuration files. 

## rc files Usage

To use this files clone this repository and create symbolic links replacing the original rcFiles and pointing to these files.

Example:  ln -s /home/user/rcFiles/vimrc /home/user/.vimrc


## system_config.bash Usage

* Sets vim as the default console editor.
* Adds colors to the text in the terminal.
* Adds git/svn information of the current folder

To use it, add this line in ~/.bashrc
source /home/user/rcFiles/system_config.bash
