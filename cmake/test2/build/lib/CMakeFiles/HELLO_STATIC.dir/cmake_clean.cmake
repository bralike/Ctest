FILE(REMOVE_RECURSE
  "CMakeFiles/HELLO_STATIC.dir/hello.c.o"
  "../../bin/libhello.pdb"
  "../../bin/libhello.a"
  "../../bin/libhello.so"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang C)
  INCLUDE(CMakeFiles/HELLO_STATIC.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
