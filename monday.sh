#!/bin/bash
# My script

echo "Hello World!"
NAME=${1?Error: no name given}
error_exit()
{
	echo $1
	exit 1
}
echo "The variable is - $NAME"
mkdir -p monday && echo "Monday directory has been created (or already exists)" || error_exit 'mkdir -p failed'
cd monday

if [ -e morning.txt ]
then
    echo "Txt file already exists, and cannot be overwritten"
else
    echo "Good Morning, $NAME, Have a Nice Day" >> morning.txt || error_exit 'Error in creating a file'
	echo "Txt file created"
fi

chmod 444 morning.txt || error_exit 'Permission command to file has failed'
echo " $_ file permissions appear below" && ls -l morning.txt