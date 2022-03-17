for i in $(seq 3655); 
do 
	awk 'BEGIN{df = ARGV[--ARGC];while ((getline < df) > 0) tab[$1] = $2}{print $1, $2 * log(3655 / tab[$1])}' $i.tf df.txt > $i.tfidf; 
done
