FILE(REMOVE_RECURSE
  "CMakeFiles/cmake_test1.dir/hello.c.o"
  "../bin/cmake_test1.pdb"
  "../bin/cmake_test1"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang C)
  INCLUDE(CMakeFiles/cmake_test1.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
