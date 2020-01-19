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
	pattern=^[a-zA-Z]{1}[a-zA-Z0-9]*[@]{1}[a-zA-Z0-9]+[.]{1}[a-z]{2,4}$; #VALIDATED EMAIL GROUP 3 i.e. TLDS
	checkPattern;
}

emailPatternMain;
