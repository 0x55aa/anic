#!/bin/sh

### Test case script

echo
echo ...Running default test cases...
echo --------------------------------
$*
if [ $? == 0 ]; then
	echo --------------------------------
	echo Default test cases passed.
	echo
	mkdir -p var
	echo OK > var/testCertificate.dat
else
	echo --------------------------------
	echo Failed default test cases!
	echo
	rm -f var/testCertificate.dat
fi
exit 0
