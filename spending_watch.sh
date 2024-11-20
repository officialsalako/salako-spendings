#!/bin/bash

# This is to add a spending expense
add_expenses_or_spending() {
	echo "Enter spending date DD-MM-YYY):"
	read date
	echo "Enter Narration/Description:"
	read description
	while true; do
	    echo "Enter amount(NGN):"
	    read amount
	    if [[ $amount =~ ^[0-9]+(\.[0-9]+)+?$ ]]; then #confirm amount is valid
		break
	    else
		echo "Incorrect amount. Kindly input a correct figure."
	    fi
done
	echo "$date | $description | $amount" >> spending.txt
	echo "Spendings Successfully Added"
}

# This is to view all spendings 
view_expenses_or_spending() {
	echo "Date | Narration | Amount"
	echo "___________________________"
	if [ -f spending.txt ]; then
	     cat spending.txt
	else 
	     echo "No spendings recorded yet."
	fi
}

#This would display menu bar
show_menu_bar() {
	echo "1. Add an expenses/spending"
	echo "2. View all spending/expenses"
	echo "3. Exit page"
}

#Loop
while true; do 
	show_menu_bar
	echo "Select an option"
	read choice
	case $choice in
	    1)
		add_expenses_or_spending
		;;
	    2)
		view_expenses_or_spending
		;;
	    3)
		echo "Bye For Now"
		exit 0
		;;
	    *)
		echo "That was invalid, Kindly select from numbered options above/below."
		;;
	esac
done
