

#!/bin/bash -x

for i in `cat list`
do
parted --script /dev/mapper/$i \
mklabel gpt \
unit TB \
mkpart primary 0.00TB 4TB \
p \
quit \
partprobe /dev/mapper/$i
done
