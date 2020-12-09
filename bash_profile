# auto-jump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# load files
for file in ~/.dotfiles/bash/{bash_prompt,exports,functions,aliases}; do
  [ -r "$file" ] && source "$file"
done
unset file
[ -r ~/.dotfiles/secret ] && source ~/.dotfiles/secret

# fix font smoothing on macs
if [[ $platform = 'darwin' ]]; then
  defaults -currentHost write -g AppleFontSmoothing -int 2
fi

#rbenv
eval "$(rbenv init -)"
