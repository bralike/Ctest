SET(LIBRARY_OUTPUT_PATH ${HELLO_SOURCE_DIR}/lib)
SET(SRC_LIST hello.c)
INCLUDE_DIRECTORIES(${HELLO_SOURCE_DIR}/include)
ADD_LIBRARY(util STATIC ${SRC_LIST})

