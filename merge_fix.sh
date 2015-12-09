#!/bin/bash

find . -type f -name -exec sed -e 's/\(<<<<<<< HEAD\).*\(=======\)/\1\2/' {} \;  #Dont miss the semicolon
grep -rl '<<<<<<< HEAD' ./ | xargs sed -i 's/=======/ /g' #Careful  many files have this phrase
grep -rl '<<<<<<< HEAD' ./ | xargs sed -i 's/<<<<<<< HEAD/ /g'
grep -rl ' >>>>>>> remotes\/remi\/LNX.LA.3.5.1-10110-8x26.0' ./ | xargs sed -i 's/>>>>>>> remotes\/remi\/LNX.LA.3.5.1-10110-8x26.0/ /g'
