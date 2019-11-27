
while read line
do 
	echo "$line" | egrep '^[A-Za-z0-9,. ]*$' | grep "^[A-Z]" | egrep "\.$" | grep -v ",[ ]*si[ ]" | grep -v "[.].+$"
done

#grep "^[A-Z]"
#egrep '^[A-Za-z0-9,. ]*$'
#egrep "\.$"
