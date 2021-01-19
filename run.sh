# written by Alexander Jabbour on Jan 18th

function traverse() {
for file in "$1"/*
do
    if [ ! -d "${file}" ] ; then
        echo "${file} is a file"
    else
        echo "Recursing with: ${file}"
        traverse "${file}"
    fi
done
}

function main() {
    traverse "$1"
}

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
main "$1"