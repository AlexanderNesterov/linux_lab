.ONESHELL:
# СОТРИТЕ КОММЕНТЫ, КРОМЕ САМОГО ПЕРВОГО
# Измените на свою директорию
LAB_DIR="/home/alexander/Documents/linux/lab_3"

all:
	g++ main.cpp count.h count.cpp -o lab_3
install:
	g++ main.cpp count.h count.cpp -o lab_3
	cd
	@if ! [ -e bin ];
	then
		mkdir bin;
	fi
	cd $(LAB_DIR)
	mv lab_3 /home/alexander/bin
clean:
	rm -rf lab_3

