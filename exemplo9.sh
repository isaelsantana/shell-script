#!/bin/bash

echo "Informe ate que o valor positivo e maior que zero"
read valor; 
i=1
while [ $i -le $valor ];
do
	echo "$i"
	((i=$i+1))
done;
