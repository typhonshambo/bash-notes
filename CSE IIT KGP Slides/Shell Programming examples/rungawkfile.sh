#!/bin/bash
echo -n "Enter dinosaur database file: "
read dbfile
cat << EOP > thero.awk
BEGIN { FS=":"; print "Theropod dinosaurs" }
{
if (\$2 ~ "theropod") { print "\t" \$1; n++ }
}
END { print n " theropods found" }
EOP
gawk -f thero.awk $dbfile
