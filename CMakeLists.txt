cmake_minimum_required(VERSION 3.12.0)
project(Server)

add_executable(Server
  main.cpp
  src/business.cpp
  src/sqlite3.c
  src/data_manager.cpp
  src/font_utils.cpp
  src/label_utils.cpp
)


set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(LIBCXX_ENABLE_INCOMPLETE_FEATURES ON)

include(FetchContent)
FetchContent_Declare(
  fmt
  GIT_REPOSITORY https://github.com/fmtlib/fmt.git
  GIT_TAG 11.0.2  # Use the latest stable release
)
FetchContent_MakeAvailable(fmt)

include_directories(include)
target_link_libraries(Server Rpcrt4)
target_link_libraries(Server fmt::fmt)
target_link_libraries(Server gdi32)

include(CTest)
enable_testing()

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})

# Copy font files to the build directory
file(COPY ${CMAKE_SOURCE_DIR}/fonts DESTINATION ${CMAKE_BINARY_DIR})

include(CPack)