for j in $(seq 100); 
do 
	time -p for i in $(seq $((30 * $j))); 
	do 
		awk 'BEGIN{df = ARGV[--ARGC]; while ((getline < df) > 0) tab[$1] = $2}{print $1, $2 * log(3655 / tab[$1])}' $i.tf df.txt > /dev/null; 
	done; 
done
