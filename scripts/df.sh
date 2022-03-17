for i in $(seq 3655); 
do 
	(cat $i | tr [:upper:] [:lower:] | sed 's/[^a-z]/ /g' | tr ' ' '\n' | sort | uniq); 
done | sort | awk '{if ($1 == precedant){count++}else{print precedant, count; count =1; precedant = $1} }END{print precedant, count}' | sed 1d > df.txt;
