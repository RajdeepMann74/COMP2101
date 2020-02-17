#!/bin/bash
myargs=()
h1="-h is for help."
h2="-v is for varbos."
h3="-d is for debug."
verbose=0
debug=0
while [ $# -gt 0 ]; do
	echo "There are $# thing left to process on the cmd argument."
	myargs+=("$1")
	echo "Added '$1' to the myargs array"
	echo "Processing the '$1'."
	case $1 in
	  -h )
	  	echo "You added \"-h\" for help."
	  	echo 'Processing -h'
	  	echo "$h1"
	  	echo "$h2"
	  	echo "$h3"
	  	;;
	  -v )
	  	echo 'You added "-v" for varbose.'
	  	echo 'Varbose Mode is On.'
	  	echo 'Processing "-v"'
	  	;;
	  -d )
	  	debug=1
	  	case "$2" in
	  	[1-5] )
	  		echo "Debug mode is ON."
	  		level=$2
	  		echo "You added \"-d\" for debug level $2."
	  		shift
	  		;;
	  		*)
	  		echo "Error: The debug option must be followed with a number within 1 to 5."
	  		shift
	  	esac
	  	;;
	  *)
	  	errors=$1
	  	echo "Error: unkown inpute $errors."
	  	shift
	  	;;
	esac
	shift
	echo "Shifted command line, leaving $# things left to the cmd argument."
	echo "-----------------------------------------------------------------"
done
if [ $verbose -eq 1 ]; then
  echo "Varbose mode is On."
else
  echo "Varbose mode is Off."
fi
if [ $debug -eq 1 ]; then
  echo "Debug mode is On with level $level."
else
  echo "Debug mode is Off."
fi
#echo "No cmd argument found."
echo "Myarg() array contents ${myargs[@]}"