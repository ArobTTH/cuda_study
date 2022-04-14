#include <iostream>
#include <random>
#include <cuda_runtime.h>
#include <chrono>
#include "helper.h"

constexpr int N = 100000;

using DataTp = int;

DataTp randomNum() {
    std::random_device randomDevice;
    std::mt19937 mt(randomDevice());
    std::uniform_real_distribution<double> distribution(0,10);
    return DataTp (distribution(mt));
}

__global__ void GPU_vectorAdd(const DataTp *vector_1, const DataTp *vector_2, DataTp *result) {

    unsigned int id = blockIdx.x * blockDim.x + threadIdx.x;
    if(id < N) {
        result[id] = vector_1[id] +vector_2[id];
    }
}

void CPU_vectorAdd(const DataTp *vector_1, const DataTp *vector_2, DataTp *result) {
    for(int i = 0; i < N; i++) {
        result[i] = vector_1[i] + vector_2[i];
    }
}

void getRandomVector(DataTp *vector) {

    for(int i = 0; i < N; i++) {
        vector[i] = randomNum();
    }
}

void vectorPrint(DataTp *vector) {

    for(int i = 0; i < N; i++) {
        std::cout<<vector[i]<<"\t";
    }
    std::cout<<std::endl;
}

//void test_cpu(DataTp *vector_1, DataTp *vector_2, DataTp *result) {
//    getRandomVector(vector_1);
//    getRandomVector(vector_2);
//    CPU_vectorAdd(vector_1,vector_2,result);
//    vectorPrint(vector_1);
//    vectorPrint(vector_2);
//    vectorPrint(result);
//}


int main() {

    auto * vector_1 = new DataTp[N];
    auto * vector_2 = new DataTp[N];
    auto * CPU_result = new DataTp[N];
    auto * GPU_result = new DataTp[N];

    //test_cpu(vector_1,vector_2,CPU_result);
    DataTp *cuda_v01,*cuda_v02,*cuda_result;

    getRandomVector(vector_1);
    getRandomVector(vector_2);

//    TI_CPU(CPU)
//    CPU_vectorAdd(vector_1,vector_2,CPU_result);
//    TO_CPU(CPU,"cpu takes: ",1)

    cudaMalloc((void**)&cuda_v01,N*sizeof(DataTp));
    cudaMalloc((void**)&cuda_v02,N*sizeof(DataTp));
    cudaMalloc((void**)&cuda_result,N*sizeof(DataTp));

    cudaMemcpy(cuda_v01,vector_1,N* sizeof(DataTp),cudaMemcpyHostToDevice);
    cudaMemcpy(cuda_v02,vector_2,N* sizeof(DataTp),cudaMemcpyHostToDevice);

//    TI_GPU(GPU1)
//    GPU_vectorAdd<<<N,1>>>(cuda_v01,cuda_v02,cuda_result);
//    TO_GPU(GPU1,"time",1)


    constexpr int threadNX = 32;
    constexpr int threadNY =  4;
    dim3 block(threadNX, threadNY);
    int Nx_blocks = (N  + threadNX - 1 ) / threadNX;
    int Ny_blocks = (1  + threadNY - 1 ) / threadNY;
    dim3 grid(Nx_blocks, Ny_blocks);

    TI_GPU(GPU2)
    for (int i =0; i<10000; i++) {
        GPU_vectorAdd<<<grid, block>>>(cuda_v01, cuda_v02, cuda_result);
    }TO_GPU(GPU2,"time",10000)

    cudaMemcpy(GPU_result, cuda_result, N * sizeof(DataTp), cudaMemcpyDeviceToHost);

    //vectorPrint(vector_1);
    //vectorPrint(vector_2);

//    std::cout<<"CPU result:"<<std::endl;
//    vectorPrint(CPU_result);
//    std::cout<<"GPU result:"<<std::endl;
   //vectorPrint(GPU_result);

    cudaFree(cuda_v01);
    cudaFree(cuda_v02);
    cudaFree(cuda_result);
    return 0;
}
