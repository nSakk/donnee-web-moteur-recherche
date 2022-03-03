mkdir tf

for i in $(ls ..);do
	cat $i | tr [:upper:] [:lower:] | sed 's/[^a-z]/ /g' | sed 's/ /\n/g' | sed '/^$/d' | sort | uniq -c > ../tf/$i.tf
done;
