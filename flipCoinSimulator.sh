#!bin/bash -x
echo "Welcome to flipCoin Simulator"

#variables
random=0
H=0
T=0

#dictionary
declare -A flipcoin


		echo "Enter number to flip coin"
		read flip
		echo "Enter number of coines"
		read coin 

function toss()

	{
		for(( i=1; i<=flip ; i++ ))
		do
			res=""
			for (( j=1; j<=coin; j++ ))
			do

				random=$((RANDOM%2))

				if  [[ $random -eq 1 ]]
				then
					((  H++ ))
                			res=$res"H"
				else
					(( T++ ))
					res=$res"T"
				fi
			done
				echo "result is:" $res
				flipcoin[$res]=$((${flipcoin["$res"]}+1))



		done 

		echo "Dictionary" ${!flipcoin[@]} : ${flipcoin[@]}



	}

toss
