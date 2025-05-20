# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_semubot_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED semubot_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(semubot_FOUND FALSE)
  elseif(NOT semubot_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(semubot_FOUND FALSE)
  endif()
  return()
endif()
set(_semubot_CONFIG_INCLUDED TRUE)

# output package information
if(NOT semubot_FIND_QUIETLY)
  message(STATUS "Found semubot: 0.0.1 (${semubot_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'semubot' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT semubot_DEPRECATED_QUIET)
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(semubot_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${semubot_DIR}/${_extra}")
endforeach()
