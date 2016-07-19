FILE(REMOVE_RECURSE
  "CMakeFiles/hello.dir/hello.c.o"
  "../../bin/libhello.pdb"
  "../../bin/libhello.a"
  "../../bin/libhello.so.1.2"
  "../../bin/libhello.so.1"
  "../../bin/libhello.so"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang C)
  INCLUDE(CMakeFiles/hello.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
