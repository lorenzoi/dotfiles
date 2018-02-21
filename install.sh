# Emacs
echo "(load \"~/dot/emacs/init.el\")" > ~/.emacs.d/init.el
cp emacs/org-init.org ~/.emacs.d/org-init.org
cp emacs/custom.el ~/.emacs.d/custom.el

# Xresources
echo "#include \"dot/Xresources\"" > ~/.Xresources
xrdb ~/.Xresources
