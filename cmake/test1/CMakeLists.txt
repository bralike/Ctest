PROJECT(CAO)
#SET(SRC_LIST hello.c)  可以用set设置需要编译的目标文件  可以是多个目标文件
message(STATUS "this is binary dir" ${PROJECT_BINARY_DIR})
message(STATUS "this is source dir" ${PROJECT_SOURCE_DIR})
ADD_EXECUTABLE(cmake_test1  ${PROJECT_SOURCE_DIR}/hello.c)

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
