alias jgrep='find . -name "*.java" -print0 | xargs -0 grep -i -n'
alias cgrep='find . -name "*.[ch]" -print0 | xargs -0 grep -i -n'
alias mktags='  etags `find . -name "*.c" -o -name "*.cpp" -o -name "*.h"` '