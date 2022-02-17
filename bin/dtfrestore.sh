git clone -b base --bare $2 $1

git --git-dir="$2" --work-tree="$HOME" config --local status.showUntrackedFiles no
git --git-dir="$2" --work-tree="$HOME" checkout || echo -e 'Deal with conflicting files, then run (possibly with -f flag if you are ok with overwriting)\ngit --git-dir="$2" --work-tree="$HOME" checkout'
