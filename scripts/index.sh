for i in $(seq 3655); 
do 
	cat $i.tf | sed "s/ .*/ $i/"; 
done | sort -k1,1 -k2,2n | awk '{if ($1 != last){if (last!="")print last, tab[last]; last = $1; tab[last] = $2} else tab[last] = tab[last] " " $2}END{print last, tab[last]}' > index
