
for i in $(seq 100);
do
	time -p for j in $(seq `expr 30 \* $i`);
	do
		cat $i.tf | sed -r "s/[0-9]+/$i/g"
	done | sort -k1,1 -k2,2n | awk '{if (mot == $2) printf(" %d", $1); else {printf("\n%s", $1); mot += $2}}' | sed 1d > /dev/null
done

