operand1=$1
operator=$2
operand2=$3

nr_argumente=$#

if ((nr_argumente != 3))
    then  echo "Sunt ori prea multe ori prea putine argumente"
	           exit -1
fi

case "$operator" in 
    "+")   echo `expr $operand1 + $operand2`  && exit -1;;
	"-" ) echo `expr $operand1 - $operand2`     &&  exit -1;;
	"/")  echo `expr $operand1 / $operand2`      && exit -1;;
	"\*")  echo `expr $operand1 \* $operand2`   && exit -1;;
esac

  echo "Operandul nu este unul valid"