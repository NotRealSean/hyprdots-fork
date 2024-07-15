#!/bin/bash

echo "The following package will be install: zoxide eza atuin thefuck"
read -p "Continue? (y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
yay -S zoxide eza atuin thefuck ttf-mononoki-nerd starship lazygit github-cli
wait -n
echo ""
echo "Package installed, Please reopen the foot terminal"
