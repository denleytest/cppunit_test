FIND_PATH(CppUnit_INCLUDE_DIR cppunit/TestCase.h /usr/include/CppUnit /usr/local/include/CppUnit)
FIND_LIBRARY(CppUnit_LIBRARY NAMES CppUnit PATH /usr/lib /usr/local/lib)
IF (CppUnit_INCLUDE_DIR AND CppUnit_LIBRARY)
 SET(CppUnit_FOUND TRUE)
ENDIF (CppUnit_INCLUDE_DIR AND CppUnit_LIBRARY)
IF (CppUnit_FOUND)
 IF (NOT CppUnit_FIND_QUIETLY)
 MESSAGE(STATUS "Found CppUnit: ${CppUnit_LIBRARY}")
 ENDIF (NOT CppUnit_FIND_QUIETLY)
ELSE (CppUnit_FOUND)
 IF (CppUnit_FIND_REQUIRED)
 MESSAGE(FATAL_ERROR "Could not find CppUnit library")
 ENDIF (CppUnit_FIND_REQUIRED)
ENDIF (CppUnit_FOUND)