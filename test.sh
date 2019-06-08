#!/bin/sh

echo "file:" test -f /home/ohara/kadai/kadai3/kadai3.sh ; echo $?

#seikai
echo yes $1 $2 | awk '{print $1/NR RS $2/NR}'| grep -Fv --line-buffered . | awk 'a[$1]++{print;exit}' > /tmp/$$-answer

#kekka
./kadai3.sh > /tmp/$$-result

# Test
diff /tmp/$$-answer /tmp/44-result && echo "OK" || echo "ERROR"
