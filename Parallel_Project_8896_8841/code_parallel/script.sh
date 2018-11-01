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
			
		
		#temp=$(<temp.txt)
		#echo "$temp"  
		#SUM[1]=+ ${temp[1]}
		#echo "${temp[1]}"
		#SUM[2]=+ ${temp[2]}
		#echo "${temp[2]}"
	
	#do
	#./qsort $j $i >> pthreasults.txt
 		 #done
		#echo " $SUM / 5 " >> pthreasults.txt 
		done
		printf "\n" >> pthreasults.txt
	done
done
