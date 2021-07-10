#!/bin/bash

echo '<mxlibrary>[' > osint.xml

COLON=false
for i in $(ls ./svgs)
do
	if [ "$COLON" = true ];
	then
		echo ',' >> osint.xml
	fi
	
	echo "{\"data\":\"data:image/svg+xml;base64,$(cat ./svgs/$i | base64)\",\"w\":40,\"h\":40,\"aspect\":\"fixed\"}" >> osint.xml
	COLON=true
done

echo ']</mxlibrary>' >> osint.xml