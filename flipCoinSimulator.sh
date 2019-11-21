echo "Welcome to flipCoin Simulator"

#constant


#variables
random=0
HH=0
HT=0
TH=0
TT=0

counter=0

#dictionary

declare -A flipcoin


	echo "Enter number to flip coin"
	read flip 

	function toss()

	{


	while [ $counter != $flip ]
	do

	random1=$((RANDOM%2))
	random2=$((RANDOM%2))

	if  [[ $random1 -eq 1 && $random2 -eq 1 ]]
        then
                (( HH++ ))
                echo "HH"
	elif [[ $random1 -eq 1 && $random2 -eq 0 ]]
	then
		(( HT++ ))
               echo "HT" 

        elif [[ $random1 -eq 0 && $random2 -eq 1 ]]
	then
		(( TH++ ))
		echo "TH "
	else
		(( TT++ ))
		echo "TT"
	fi
		(( counter++ ))
		flipcoin[HH]="HH"
		flipcoin[HT]="HT"
		flipcoin[TH]="TH"
		flipcoin[TT]="TT"


	done



		echo  percentHH=$(($HH*100/$flip))
		echo  percentHT=$(($HT*100/$flip))
		echo  percentTH=$(($TH*100/$flip))
		echo  percentTT=$(($TT*100/$flip))




		echo "Doublet Combination" ${flipcoin[@]}   


	}

toss
