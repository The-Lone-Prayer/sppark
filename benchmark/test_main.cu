#include "../util/gpu_t.cuh"


int main() {
    printf("%d\n", cuda_available());
    int count = 9999;
    cudaGetDeviceCount(&count);
    printf("%d\n", count);

    auto prop = gpu_props(0);
    printf("%s\n", prop.name);
}
