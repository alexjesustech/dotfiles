#!/usr/bin/bash

./dotdrop.sh update -f

# clean passwords and tokens
sed -i 's/export GITHUB_TOKEN=.*/export GITHUB_TOKEN=GITTOKENHERE/' dotfiles/zshrc

# Packages
apt list --installed > apt-installed.txt
apt list --manual-installed > apt-installed-manual.txt
snap list > snap-installed.txt
flatpak list > flatpak-installed.txt
cargo install --list > cargo-install.txt
micro -plugin list > micro_plugins.txt
code --list-extensions | xargs -L 1 echo code --install-extension > code_extensions.txt
/usr/bin/python3 -m pip freeze > "system_python$(python3 -V).txt"

# Commit
git add .
git commit -m "Update dotfiles"
git push -u origin main
