# jgit
![](https://img.shields.io/github/stars/jgnacio/jgit.svg)

# Install
In a linux terminal type:
```bash
git clone https://github.com/jgnacio/jgit.git
cd jgit
./install.sh
```
``git clone https://github.com/jgnacio/jgit.git`` for clone the repo in your current directory.
``cd jgit`` go to the folder.
``./install.sh`` run the installer to run it anywhere.
restart your shell with exit from the current shell and run it again.

And that's it, you now have jgit installed on your system!

# Usage
Just type ``jgit`` on terminal and run it ;)

# How remove :,(
You just have to remove the repositorie from your system with ``rm`` and
delete the alias from your shell configuration.
### (bash) example:
open your .bashrc (it is usually in ~/.bashrc) and delete this line
```bash
alias jgit='<your-path-for-jgit>/jgit
```
the -f parameter in rm is for force deletion.
### (zsh) example:
is identical to bash only modifying the .zshrc file. (it is usually in ~/.zshrc)
and delete this line
```bash
alias jgit='<your-path-for-jgit>/jgit
```
