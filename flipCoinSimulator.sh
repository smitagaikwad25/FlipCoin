echo "Welcome to flipCoin Simulator"

#constant


#variables
random=0
head=0
tail=0
counter=0

#dictionary

declare -A flipcoin


	echo "Enter number to flip coin"
	read flip 

	while [ $counter != $flip ]
	do

	random=$((RANDOM%2))
	if  [ $random -eq 1 ]
        then
                (( head++ ))
                echo "HEAD"  echo "head is $numOfHead times"

        else
		(( tail++ ))
		echo "TAIL"
	fi
		(( counter++ ))

		flipcoin[random]="$random"
	        echo "Singlet Combination" ${flipcoin[@]}

		

	done


	echo "percentage of head =" $(($head*100/$flip))
	echo "percentage of tail =" $(($tail*100/$flip))


