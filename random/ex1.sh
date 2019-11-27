a=$1
b=$2
c=$3

nr_of_parameters=$#

if (( nr_of_parameters != 3 ))
    then 
	        echo "there are more or less than three parameters received through the command line"
			exit -1
fi

if (( a >= b && a >= c))
     then echo $1
fi 

if ((b >= a && b >= c))
        then echo $2
fi

if ((c >= a && c >= b))
   then    echo $3
fi
