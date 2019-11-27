operand1=$1
operator=$2
operand2=$3

nr_argumente=$#

if ((nr_argumente != 3))
    then  echo "Sunt ori prea multe ori prea putine argumente"
	           exit -1
fi

if     [ $operator = '+' ]
    then echo `expr $operand1 + $operand2`
elif  [ $operator = '-' ]
         then echo `expr $operand1 - $operand2`
elif [ $operator = '/' ]
         then echo `expr $operand1 / $operand2`
elif [ $operator = '\*' ]
          then echo `expr $operand1 \* $operand2`
else 
           echo "Operandul nu este unul valid"
fi