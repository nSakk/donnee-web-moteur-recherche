for j in $(seq 100); 
do 
	time -p for i in $(seq $(($j * 30))); 
	do 
		cat $i | tr [:upper:] [:lower:] | sed 's/[^a-z]/ /g' | sed 's/ /\n/g' | sort | awk '{if ($1 == precedent) compteur ++; else {print precedent, compteur; compteur = 1; precedent = $1 }  }END{print precedent, compteur}' | sed 1d > /dev/null; 
	done; 
done
