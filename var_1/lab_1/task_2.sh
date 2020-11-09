# !/bin/bash
# СОТРИТЕ КОММЕНТЫ, КРОМЕ САМОГО ПЕРВОГО
# Напишите свой путь до папки с лабой
lab_folder="/home/alexander/Documents/linux/var_1/lab_1"
cd $lab_folder

touch file_1
touch file_2.lib
touch file_3.doc

chmod ug+x file_1
sudo mv file_1 /usr/bin
sudo mv file_2.lib /usr/lib

cd /usr/share/doc
# Поставьте свою фамилию
sudo mkdir nesterov
cd $lab_folder

sudo mv file_3.doc /usr/share/doc/nesterov
