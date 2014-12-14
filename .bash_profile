for file in "$(dirname "$BASH_SOURCE")"/.bash/{options,exports,aliases,functions,prompt,extra}; do
  [ -r "$file" ] && source "$file";
done;
unset file;
