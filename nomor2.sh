#!/bin/bash

awk -F ',' '
{if($7=="2012") A[$1]+=$10} END{ for (i in A) print i }' WA_Sales_Products_2012-14.csv | sort -n | tail -1 



awk -F ',' '
{if(($7=="2012") && ($1=="United States")) A[$4]+=$10} END {for(i in A) print A[i] "|" i }' WA_Sales_Products_2012-14.csv | sort -n | tail -3 | 
awk -F '|' '{print $2}'

awk -F ',' '
{if($1=="United States" && $7=="2012" && ($4=="Personal Accessories" || $4=="Camping Equipment" || $4=="Outdoor Protection")) A[$6]+=$10;} END {for(i in A) print A[i] "|" i}' WA_Sales_Products_2012-14.csv | sort -n -r | head -n 3 |
awk -F '|' '{print $2}'

