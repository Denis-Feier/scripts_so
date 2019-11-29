file="$1"
dir="$2"

if test $# -eq 2
then
    leg=0
    for i in $dir/*
    do
        if test -h $i
        then
            leg=`expr $leg + 1`
        elif test -f $i
        then
            l=`cat $i | egrep '^[A-Za-z0-9,. ]*$' | grep "^[A-Z]" | egrep "\.$" | grep -v ",[ ]*si[ ]" | grep -v "[.].+$" | wc -l`
            echo $i $l >> $file
        elif test -d $i
        then
            n=`bash $0 $1 $i`
            leg=`expr $leg + $n`
        fi
    done
    echo $leg
else
    echo "Must have 2 args <file> and <dir>"
fi
