# Emacs
echo "(load \"~/dotfiles/emacs/init.el\")" > ~/.emacs.d/init.el
cp emacs/org-init.org ~/.emacs.d/org-init.org

# Xresources
echo "#include \"dotfiles/Xresources\"" > ~/.Xresources
xrdb ~/.Xresources
