mkdir ../df

for i in $(seq 3655);
do

  cat ../$i | tr [:upper:] [:lower:] | sed 's/[^a-z]/ /g' | sed 's/ /\n/g' | awk 'NF != 0 {print}' | sort -u;
done | sort | uniq -c | sed 1d > ../df/df.txt

