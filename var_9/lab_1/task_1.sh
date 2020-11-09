# !/bin/bash
# СОТРИТЕ КОММЕНТЫ, КРОМЕ САМОГО ПЕРВОГО
# Подставьте свою папку с лабой
cd
touch table.txt
counter=0
string=""
for line in $(du -h ~ --max-depth=1 --exclude=.*)
do
	if [[ $(expr $counter % 2) = 0 ]]
	then
		echo $string >> table.txt
		string=""
	fi
	string="$string $line"
	counter=$(($counter + 1))
done

