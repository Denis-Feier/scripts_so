echo $#

echo "Init:"
if test $# -ge 3
then
    for i in $1 $2 $3
    do
        echo $i
    done 
else
    echo "NOT OK"
fi

shift 

echo "After shift:"

if test $# -ge 2
then
    for i in $1 $2
    do
        echo $i
    done
fi