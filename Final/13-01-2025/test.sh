!/bin/bash

read -p "Enter a positive integer:" num

if[["num" =~^[0-9]+$]];

	#initialize factorial value 
	factorial=1
	
	#Use a for loop for calculate result
	for(( i = 1; i <= num; i++ )); do
		factorial=$((factorial*i))
	done
	
	#Display the result
	echo "The factorial of $num is $factorial"
else
	#input is not a valid positive integer
	echo "Invalid input. Please enter a positive integer!"
fi

#chmod +x test.sh
#./test.sh
