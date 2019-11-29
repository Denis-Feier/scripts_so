# exec this piece of shit: 
# bash sol.sh txt.txt 
# and the it will ask for some dirs 

if test $# -eq 1
then
    file=$1
    if test -f $file && ! test -h $file
    then
        echo "" > $file
        while read line
        do
            if test $line = "STOP"
            then
                echo "THE SCRIPT WILL STOP"
                exit
            else
                if test -d $line
                then
                    echo "$line"
                    cnt=0
                    for i in $line/*
                    do
                        if test -h $i && echo $i | grep -q "^$line/[A-Z][A-Za-z]*$"
                        then
                            cnt=`expr $cnt + 1`
                        fi
                    done
                    echo "$line: $cnt legaturi" >> $file 
                fi
            fi 
        done
    else
        echo "NOT REG FILE"
    fi
else 
    echo "NO ARGS"
fi