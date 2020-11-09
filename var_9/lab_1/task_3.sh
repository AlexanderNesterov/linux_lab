# !/bin/bash
# СОТРИТЕ КОММЕНТЫ, КРОМЕ САМОГО ПЕРВОГО
# Подставьте свою папку с лабой
lab_folder="/home/alexander/Documents/linux/var_9/lab_1"
cd $lab_folder
directory=$1
extension=$2
search_str=$3

# Напишите свою фамилию
touch nesterov.log
log_file="$lab_folder/nesterov.log"

cd $directory
files=$(ls -a | grep ".${extension}$")

for file in $files
do
entries=$(grep -c $search_str $file)
if [[ $entries > 0 ]]
then
echo $file > $log_file
fi
done

sudo mv $log_file /var/log

