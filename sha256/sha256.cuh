

#ifndef SHA256_CUH
#define SHA256_CUH

#include <cstddef>
namespace sha256 {
using BYTE = unsigned char;
using WORD = unsigned int;
using LONG = unsigned long long;
static constexpr size_t SHA256_BLOCK_SIZE = 32;

} // namespace sha256

#endif
