cmake_minimum_required(VERSION 3.21)
project(02_matrix_add CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(02_matrix_add main.cu helper.h)

set_target_properties(02_matrix_add PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
