#!/bin/bash

find . -type f -name -exec sed -e 's/\( \).*\( \)/\1\2/' {} \;  #Dont miss the semicolon
grep -rl ' ' ./ | xargs sed -i 's/>>>>>>> remotes\/remi\/LNX.LA.3.5.1-10110-8x26.0/ /g'
grep -rl ' ' ./ | xargs sed -i 's/ / /g'
grep -rl ' ' ./ | xargs sed -i 's/ / /g' #Careful  
