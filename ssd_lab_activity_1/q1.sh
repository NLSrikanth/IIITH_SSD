#!/bin/bash

# 1. Using -o to get only words in new line.
# 2. Piping the output to next command
# 3. From the input of grep command remove the words which end with txt. -v is used for not-match
grep -i -o '\<a[[:alnum:]]*' $1 | grep -i -v 'txt\>'
