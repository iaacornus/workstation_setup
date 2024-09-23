#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qhull::qhull" for configuration "Release"
set_property(TARGET Qhull::qhull APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Qhull::qhull PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/qhull"
  )

list(APPEND _cmake_import_check_targets Qhull::qhull )
list(APPEND _cmake_import_check_files_for_Qhull::qhull "${_IMPORT_PREFIX}/bin/qhull" )

# Import target "Qhull::rbox" for configuration "Release"
set_property(TARGET Qhull::rbox APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Qhull::rbox PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/rbox"
  )

list(APPEND _cmake_import_check_targets Qhull::rbox )
list(APPEND _cmake_import_check_files_for_Qhull::rbox "${_IMPORT_PREFIX}/bin/rbox" )

# Import target "Qhull::qconvex" for configuration "Release"
set_property(TARGET Qhull::qconvex APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Qhull::qconvex PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/qconvex"
  )

list(APPEND _cmake_import_check_targets Qhull::qconvex )
list(APPEND _cmake_import_check_files_for_Qhull::qconvex "${_IMPORT_PREFIX}/bin/qconvex" )

# Import target "Qhull::qdelaunay" for configuration "Release"
set_property(TARGET Qhull::qdelaunay APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Qhull::qdelaunay PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/qdelaunay"
  )

list(APPEND _cmake_import_check_targets Qhull::qdelaunay )
list(APPEND _cmake_import_check_files_for_Qhull::qdelaunay "${_IMPORT_PREFIX}/bin/qdelaunay" )

# Import target "Qhull::qvoronoi" for configuration "Release"
set_property(TARGET Qhull::qvoronoi APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Qhull::qvoronoi PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/qvoronoi"
  )

list(APPEND _cmake_import_check_targets Qhull::qvoronoi )
list(APPEND _cmake_import_check_files_for_Qhull::qvoronoi "${_IMPORT_PREFIX}/bin/qvoronoi" )

# Import target "Qhull::qhalf" for configuration "Release"
set_property(TARGET Qhull::qhalf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Qhull::qhalf PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/qhalf"
  )

list(APPEND _cmake_import_check_targets Qhull::qhalf )
list(APPEND _cmake_import_check_files_for_Qhull::qhalf "${_IMPORT_PREFIX}/bin/qhalf" )

# Import target "Qhull::qhull_r" for configuration "Release"
set_property(TARGET Qhull::qhull_r APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Qhull::qhull_r PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqhull_r.so.8.0.2"
  IMPORTED_SONAME_RELEASE "libqhull_r.so.8.0"
  )

list(APPEND _cmake_import_check_targets Qhull::qhull_r )
list(APPEND _cmake_import_check_files_for_Qhull::qhull_r "${_IMPORT_PREFIX}/lib/libqhull_r.so.8.0.2" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
