# written by Alexander Jabbour on Jan 18th

if [ $# -ne 2 ] 
then 
	echo "Error: program needs 2 inputs exactly" 
	exit
fi

# clone the 2 repos
echo "Comparing "$1" and "$2
git clone $1
git clone $2

# traverse the 2 files
python3 trav.py $1 $2