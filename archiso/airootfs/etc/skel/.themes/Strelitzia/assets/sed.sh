#!/bin/sh
sed -i \
         -e 's/#323942/rgb(0%,0%,0%)/g' \
         -e 's/#9db774/rgb(100%,100%,100%)/g' \
    -e 's/#323942/rgb(50%,0%,0%)/g' \
     -e 's/#e21a56/rgb(0%,50%,0%)/g' \
     -e 's/#2f363f/rgb(50%,0%,50%)/g' \
     -e 's/#9db774/rgb(0%,0%,50%)/g' \
	"$@"
