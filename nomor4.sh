#!/bin/bash

low=(a b c de f g h i j k l m n o p q r s t u v w x y z)
up=(A B C D E F G H I J K M N O P Q R S T U V W X Y Z)

menit=`date +"%M"`
jam=`date +"%H"`
tanggal=`date +"%d"`
bulan=`date +"%m"`
tahun=`date +"%Y"`

jam2=`expr $jam - 0` 
en_low=${low[$jam2 - 1]}
en_up=${up[$jam2 - 1]}

nama="/home/yusran/Documents/sisop/praktikum1/$jam:$menit $tanggal-$bulan-$tahun.txt"

cat "/var/log/syslog" | tr "[:lower:]" "$en_low-za-$en_low" | tr "[:upper:]" "$en_up-ZA-$en_up" > "$nama"
