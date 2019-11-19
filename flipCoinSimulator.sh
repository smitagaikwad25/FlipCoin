echo "Welcome to flipCoin Simulator"

#constant
#variables
random=0
head=0
tail=0

	random=$((RANDOM%2))
	if  [ $random -eq 1 ]
	then
		echo "HEAD"
	else
		echo "TAIL"
	fi
