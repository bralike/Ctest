cmake_minimum_required(VERSION 2.6)
set(src_list hello.c)
ADD_LIBRARY(HELLO_STATIC STATIC ${src_list})
add_library(hello SHARED ${src_list})
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set_target_properties(HELLO_STATIC PROPERTIES OUTPUT_NAME "hello")
set_target_properties(hello PROPERTIES VERSION 1.2 SOVERSION 1)
INSTALL(
    TARGETS hello HELLO_STATIC;
    ARCHIVE DESTINATION lib;
    LIBRARY DESTINATION lib;
    )
INSTALL(FILES hello.h DESTINATION include/hello)
