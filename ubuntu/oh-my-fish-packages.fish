#!/bin/fish

# Installs omf plugins and theme, as well as the required font
omf install plugin-bang-bang plugin-extract
mkdir -p ~/.local/share/fonts/NerdFonts
cd ~/.local/share/fonts/NerdFonts
if curl -Lo "Ubuntu Mono Nerd Font Complete Mono.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete%20Mono.ttf
	fc-cache -f "~/.local/share/fonts/NerdFonts"
	cd ~
	omf install bobthefish
	echo -e "# Extra character support for bobthefish w/ NerdFonts\nset -g theme_nerd_fonts yes" >> ~/.config/fish/config.fish
	echo "Remember to set GNOME Terminal to use the UbuntuMono Nerd Font"
	omf reload
else
	echo "Failed to grab the UbuntuMono font from the nerd-fonts GitHub"
end
