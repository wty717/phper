#!/bin/bash
CSI='\x1b\[';Rp='[0-9:;<=>?]';Ri='[- !\"#$%&'\''()*+,./]';Rf='[]@A-Z[\\^_`a-z{|}~]';
cat $1 | sed -e 's/'"$CSI$Rp"'*'"$Ri"'*'"$Rf"'//g'  && rm -f $1 && mv $1.tmp $1
