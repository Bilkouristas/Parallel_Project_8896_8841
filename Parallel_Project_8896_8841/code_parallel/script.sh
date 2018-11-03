#!/bin/bash
echo " " > pthreasults.txt	



for i in {1..8}
do	
echo "p = $i" >> pthreasults.txt
	
  		for j in {16..24}
  		do
			for z in {1..6}
			do
    			./qsort $j $i  >> pthreasults.txt
			done
		printf "\n" >> pthreasults.txt
		done
	done
