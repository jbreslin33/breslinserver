#!/bin/bash

if [ "$1" = "1" ]
then
mpg123 -C -b 4096 http://streaming205.radionomy.com/ABSOLOM-80  

elif [ "$1" = "2" ]
then
	mpg123 -C -b 4096 http://streaming207.radionomy.com/Hit-s-My-Music-Flashback  
elif [ "$1" = "3" ]
then
	mpg123 -C -b 4096 http://streaming201.radionomy.com/Vintage-Radio  
elif [ "$1" = "4" ]
then
	mpg123 -C -b 4096 http://streaming208.radionomy.com/horizonte-radio   
elif [ "$1" = "5" ]
then
	mpg123 -C -b 4096 http://streaming206.radionomy.com/RADIOTX   
elif [ "$1" = "6" ]
then
	mpg123 -C -b 4096 http://streaming203.radionomy.com/Addictive-80s   
elif [ "$1" = "7" ]
then
	mpg123 -C -b 4096 http://streaming205.radionomy.com/BestBigMix   


else
    echo "must pass parameter as number"
fi
