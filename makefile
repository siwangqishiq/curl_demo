CC := g++

FLAG := -std=c++17

SRC_DIR = .
BUILD_DIR = build

build_dir:
	mkdir -p ${BUILD_DIR}

compile:build_dir 
	${CC} -c ${SRC_DIR}/main.cpp ${FLAG} -o ${BUILD_DIR}/main.o -I include/

link:compile
	${CC} ${BUILD_DIR}/*.o -o ${BUILD_DIR}/main.exe -Llib -lcurl
	
run:link
	${BUILD_DIR}/main
	
clean:
	rm -f ${BUILD_DIR}/*.o 
	rm -f ${BUILD_DIR}/main.exe