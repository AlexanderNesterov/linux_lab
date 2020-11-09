# !/bin/bash
# СОТРИТЕ КОММЕНТЫ, КРОМЕ САМОГО ПЕРВОГО
# Подставьте свою папку с лабой
lab_folder="/home/alexander/Documents/linux/var_4/lab_1/fold"
cd $lab_folder
extensions=$(ls -l | sed -n 's~^-.*\(\..*\)$~\1~p' | uniq)
current_date=$(date +"%Y%m%d")
dir_to_move_archives="/var/backups"

cd $dir_to_move_archives
sudo mkdir $current_date
cd $lab_folder

dir_to_move_archives=$dir_to_move_archives/$current_date

for ext in $extensions
do
	files=$(find . -name "*$ext")
	archive_name=${ext:1}
	tar --totals -cvf $archive_name.tar $files
	sudo mv $archive_name.tar $dir_to_move_archives
done
