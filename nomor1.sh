#!/bin/sh

nama_file=1

for file in /home/yusran/Documents/sisop/praktikum1/nature/*.jpg
do
	base64 -d $file | xxd -r > /home/yusran/Documents/sisop/praktikum1/gambar/$nama_file
	let nama_file++
done
