#!/bin/bash

#read namafile
namafile="$1"
decryptor="${namafile%:*}"

low=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
up=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

jam2=`expr 26 - $decryptor - 0` 
de_low=${low[$jam2-1]}
de_low2=${low[$jam2-2]}
de_up=${up[$jam2-1]}
de_up2=${up[$jam2-2]}


nama="/home/yusran/Documents/sisop/praktikum1/$namafile decrypt.txt"

cat "$namafile" | tr "[a-z]" "$de_low-za-$de_low2" | tr "[A-Z]" "$de_up-ZA-$de_up2"  > "$nama"
