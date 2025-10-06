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
gawkop=$(gawk -f thero.awk $dbfile)
echo "gawk produced the following output..."
echo "$gawkop"
