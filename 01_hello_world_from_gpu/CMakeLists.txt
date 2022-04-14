cmake_minimum_required(VERSION 3.21)
project(01_hello_world_form_gpu CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(01_hello_world_form_gpu main.cu)

set_target_properties(01_hello_world_form_gpu PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
