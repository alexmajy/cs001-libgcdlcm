#!/bin/bash

export LD_LIBRARY_PATH=../src

echo
echo "######### test static ##########"

./test-static < in.txt > static.out
diff out.txt static.out > /tmp/$$.test

if [[ $? -ne 0 ]]
then
    echo "test static FAILED:"
    cat /tmp/$$.test 
else
    echo "test static PASSED"
fi

echo
echo "######### test share  ##########"
./test-share < in.txt > share.out 
diff out.txt share.out > /tmp/$$.test

if [[ $? -ne 0 ]]
then
    echo "test share FAILED:"
    cat /tmp/$$.test 
else
    echo "test share PASSED"
fi




