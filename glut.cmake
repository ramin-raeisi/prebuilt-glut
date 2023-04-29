find_path(GLUT_INCLUDE GL/glut.h PATHS ${CMAKE_CURRENT_LIST_DIR})

find_path( GLUT_LIB_DEBUG libfreeglut.lib PATHS ${CMAKE_CURRENT_LIST_DIR}/cmake64/debug)
find_path( GLUT_LIB_RELEASE libfreeglut.lib PATHS ${CMAKE_CURRENT_LIST_DIR}/cmake64/release)
set(Glut_LIBRARIES debug ${GLUT_LIB_DEBUG}/libfreeglut.lib optimized ${GLUT_LIB_RELEASE}/libfreeglut.lib)

include_directories(${GLUT_INCLUDE})

add_definitions(-DFREEGLUT_STATIC)

macro(AziGlut)
endmacro(AziGlut)