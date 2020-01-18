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
	pattern=^[a-zA-Z]{1}[a-zA-Z0-9]*[@]{1}[a-zA-Z0-9]*$; #VALIDATION EMAIL GROUP 2 WITH @
	checkPattern;
}

emailPatternMain;
