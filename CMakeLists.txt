cmake_minimum_required(VERSION 3.20)

project(sppark-core CXX CUDA)

set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE INTERNAL "")
set(CMAKE_BUILD_TYPE "Release")


# set(CMAKE_CUDA_ARCHITECTURES 61)
file(GLOB CORE_SRC util/all_gpus.cpp src/lib.cpp)
set_source_files_properties(${CORE_SRC} PROPERTIES LANGUAGE CUDA)
add_library(sppark-core ${CORE_SRC})
set_target_properties(sppark-core PROPERTIES FORCE_LANGUAGE CUDA)


add_subdirectory(benchmark)