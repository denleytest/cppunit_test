set(PROJ_NAME CppUnitTest)
project(${PROJ_NAME})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
include_directories("${CMAKE_SOURCE_DIR}/example")
aux_source_directory(. SOURCE_DIR)
add_executable(${PROJ_NAME} ${SOURCE_DIR})
target_sources(${PROJ_NAME}
  PRIVATE
  "${CMAKE_SOURCE_DIR}/example/Deque.cpp"
  )
target_link_libraries(${PROJ_NAME} CppUnit)

install (TARGETS ${PROJ_NAME} DESTINATION bin)