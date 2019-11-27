u="$USER"
now=$(date +"%H")
echo "Salut $u"
if  ((6 <= now && now <= 12))
    then  echo "Buna dimineata"
fi

if  ((12 < now && now <= 18))
    then  echo "Buna ziua"
fi

if  ((18 < now && now <= 22))
    then  echo "Buna seara"
fi

if  ((22 < now || now < 6))
    then  echo "Noapte buna"
fi