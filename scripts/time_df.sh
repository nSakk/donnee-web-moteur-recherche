for j in $(seq 100);
do
	time -p for i in $(seq `expr 30 \* $j`);
	do

  		cat ../$i | tr [:upper:] [:lower:] | sed 's/[^a-z]/ /g' | sed 's/ /\n/g' | awk 'NF != 0 {print}' | sort -u;
	done | sort | uniq -c | sed 1d > /dev/null
done

