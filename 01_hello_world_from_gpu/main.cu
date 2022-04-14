#include <iostream>
#include <cstdio>

__global__ void HelloWorld () {

    //std::cout<< "hello world form GPU!" << std::endl;
    printf("hello world form GPU!\n");
}

int main() {

    HelloWorld<<<1,1>>>();

    return 0;
}
