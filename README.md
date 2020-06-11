# Settings and Configurations
my Linux shell dotfiles (.bashrc, .cshrc, .aliases.bash, .aliases.csh, etc.)

* NOTE: below assumes you have cloned this repo into your home directory under `~/settings`.

## Bash Settings Usage:
* Append following to your `~/.bashrc` to source this file, e.g.

```bash
# Source custom ~/settings/bashrc (if exists).
if [ -f ~/settings/bashrc ]; then
  source ~/settings/bashrc
fi
```

* -or- Link `~/.bashrc` to this file under ~/settings/bashrc, e.g.

```shell
ln -s ~/settings/bashrc ~/.bashrc
````

## If only interested in Bash Aliases (FYI: above bashrc includes the below lines)
* Append following to your `~/.bashrc` to source just the aliases, e.g.

```bash
# Source alias definitions (if exists).
if [ -f ~/settings/aliases.bash ]; then
  source ~/settings/aliases.bash
fi
```

