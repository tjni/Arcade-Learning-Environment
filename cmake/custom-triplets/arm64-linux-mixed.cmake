set(VCPKG_TARGET_ARCHITECTURE arm64)

set(VCPKG_CMAKE_SYSTEM_NAME Linux)

if(PORT MATCHES "sdl")
  set(VCPKG_LIBRARY_LINKAGE dynamic)
  set(VCPKG_CRT_LINKAGE dynamic)
else()
  set(VCPKG_LIBRARY_LINKAGE static)
  set(VCPKG_CRT_LINKAGE static)
endif()
