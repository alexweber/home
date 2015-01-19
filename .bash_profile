for file in "$(dirname "$BASH_SOURCE")"/.bash/{exports,options,aliases,functions,prompt,private}; do
  [ -r "$file" ] && source "$file";
done;
unset file;
