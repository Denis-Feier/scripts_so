number="$1"

while test $number -ne 0
do
    echo $number
    number=`expr $number - 1`
done 