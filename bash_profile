export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

alias rebuildow='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'
alias jsc='/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc'
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
