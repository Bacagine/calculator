#!/usr/bin/sh
# 
# functions.sh: Functions used in script calculator.sh
# 
# Developed by Gustavo Bacagine <gustavo.bacagine@protonmail.com>
# 
# Date: 04/08/2021

sum(){
	return $(($1 + $2))
}

sub(){
	return $(($1 - $2))
}

mult(){
	return $(($1 * $2))
}

div(){
	return $(($1 / $2))
}

main(){
	while true ; do
		clear
		echo "*********MENU*********"
		echo "* 1) Sum             *"
		echo "* 2) Subtract        *"
		echo "* 3) Multiplication  *"
		echo "* 4) Division        *"
		echo "* 5) Exit            *"
		echo "**********************"
		read op

		case $op in
			1)
				printf "Type the first number for sum: "
				read num1
				printf "Type the second number for sum: "
				read num2
				sum $num1 $num2
				resul=$?
				echo "$num1 + $num2 = $resul"
				sleep 2
				;;
			2)
				printf "Type two number for sub: "
				read num1
				printf "Type the second number for sub: "
				read num2
				sub $num1 $num2
				resul=$?
				echo "$num1 - $num2 = $resul"
				sleep 2
				;;
			3)
				printf "Type two number for multiplication: "
				read num1
				printf "Type the second number for multiplication: "
				read num2
				mult $num1 $num2
				resul=$?
				echo "$num1 * $num2 = $resul"
				sleep 2
				;;
			4)
				printf "Type two number for division: "
				read num1
				printf "Type the second number for division: "
				read num2
				div $num1 $num2
				resul=$?
				echo "$num1 / $num2 = $resul"
				sleep 2
				;;
			5)
				exit
				;;
			*)
				printf "\033[1;31mE:\033[m \033[1mInvalid option!!!\033[m"
				sleep 2
		esac
	done
}

