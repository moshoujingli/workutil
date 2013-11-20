LIB_VER_LIST=("" "" "")
for LIB_VER in ${LIB_VER_LIST[@]}; do
	cd engine
	./compile.sh ${LIB_VER}
	cd ..
	cd utils
	./compile.sh ${LIB_VER}
	cd ..
	cd partterns
	./compile.sh ${LIB_VER}
	cd ..  
	cd interface
	./compile.sh ${LIB_VER}
	cd ..
	cd sgf
	./compile.sh ${LIB_VER}
	cd ..
	mkdir "lib_${LIB_VER}"
	cd "lib_${LIB_VER}"
	./tarlib.sh
	cd ..
done


cd lib_all

