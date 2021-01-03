echo "How many files are present in current directory?"
echo "Please guess the number of files:"
read num
function guess {
	x=$(ls | wc -l)
	while [[ $x -ne $num ]]
	do
		if [[ $x -lt $num ]]
		then
			echo "Your guess is too high"
			echo "Guess again:"
			read num
		else
			echo "Your guess is too low"
			echo "Guess again:"
			read num
		fi
	done
	if [[ $x -eq $num ]]
	then
		echo "Congratulations! Your guess is correct"
	fi
}

guess
