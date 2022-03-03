for i in $(seq 100);
do
	time -p for j in $(seq `expr 30 \* $i`);
	do
		cat ../$j | tr [:upper:] [:lower:] | sed 's/[^a-z]/ /g' | sed 's/ /\n/g' | sed '/^$/d' | sort | uniq -c > /dev/null
	done
done
