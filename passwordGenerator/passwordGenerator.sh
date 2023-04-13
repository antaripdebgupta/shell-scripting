#/!bin/bash

echo "Enter the length of password: "
read  PASS_SIZE

if [ $PASS_SIZE -ge 12 ];
 then
	for p in $(seq 1);
	 do
		openssl rand -base64 48 | cut -c1-$PASS_SIZE
	done
 else
	echo "Take 12-character for good strength of your password."
fi
