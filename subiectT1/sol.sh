if test $# -eq 1 
then 
    file=$1
    if test -f $file && ! test -h $file
    then
        echo $file
        s=0
        while read word
        do
            
            if test $word = "End"
            then
                echo "End of while"
                echo $s > $file
                exit
            fi
            if echo $word | grep -q "^[1-9][0-9]*$" || echo $word | grep -q "^0$"
            then
                echo $word
                if test $word -ge "100"
                then
                    s=`expr $word + $s`
                    echo $s
                fi
            fi
        done
    else
        echo "Not reg file boy!!"
    fi 
else
    echo "Usage: base $0 <file>"
fi