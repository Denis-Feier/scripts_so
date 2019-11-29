while read line
do
  if test $line = "STOP"
  then
    echo "THE SCRIPT WILL STOP"
    exit
  else
    echo "$line"
  fi 
done