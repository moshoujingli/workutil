TAR_LIB=
TAR_LIB *.o -o libgnugo.a
lipo -info libgnugo.a
cp libgnugo.a ../lib_all