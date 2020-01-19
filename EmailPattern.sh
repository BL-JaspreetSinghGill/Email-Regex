#!/bin/bash -x

askUserInput () {
	read -p "ENTER THE PATTERN : " inputPattern;
}

checkPattern () {
	if [[ $inputPattern =~ $pattern ]]
	then
		echo "VALID EMAIL";
	else
		echo "INVALID EMAIL";
	fi;
}

emailPatternMain () {
	askUserInput;
	#VALIDATED THE OPTIONAL PART COUNTRY CODE WITH WHOLE EMAIL PATTERN.
	pattern="^[a-zA-Z]{1}[a-zA-Z0-9]*([-.+_]{1}[a-zA-Z0-9]+)?[@]{1}[a-zA-Z0-9]+[.]{1}[a-z]{2,4}([.][a-z]{2})?$";
	checkPattern;
}

emailPatternMain;
