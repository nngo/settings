# settings
my Linux shell dotfiles (.bashrc, .cshrc, .alias-bash, .alias-csh, etc.)

# Bash Settings Usage:
* Append following to your `~/.bashrc` to source this file, e.g.
```bash
# Source custom ~/settings/bashrc (if exists).
if [ -f ~/settings/bashrc ]; then
  source ~/settings/bashrc
fi
```
* -or- Link `~/.bashrc` to this file under ~/settings/bashrc, e.g.
```
ln -s ~/settings/bashrc ~/.bashrc
````
