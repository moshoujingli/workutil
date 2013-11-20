CC=
A_FOLDER= $1;

cat ./lib_list|while [[ read line ]]; do
	cc "$line.o" "$line.c"
done

mv *.o A_FOLDER;
cp *.h A_FOLDER;