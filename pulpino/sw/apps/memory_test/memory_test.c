#include <stdio.h>
#include <stdint.h>

// Define the start and end addresses for a 32-bit memory space.
// Note: On many systems, the entire 4GB space is not writable,
// so this code must be used only when you are sure you have full access.
#define START_ADDR ((uintptr_t)0x00100000)
#define END_ADDR   ((uintptr_t)0x00108000)

int main(void) {
    // Use a volatile pointer so that the compiler cannot optimize away the writes.
    volatile uint32_t *addr;
    // Define a constant test pattern to write.
    uint32_t pattern = 0xDEADBEEF;
    int error_count = 0;
    printf("Starting memory write test...\n");
    printf("Writing test pattern 0x%08X to addresses from 0x%08lX to 0x%08lX.\n",
           pattern, (unsigned long)START_ADDR, (unsigned long)END_ADDR);

    // Iterate through the memory space, writing the pattern to each 32-bit aligned address.
    // WARNING: This loop may take a very long time on a full 4GB space and will crash on systems
    // that do not allow direct physical memory access.
    for (addr = (volatile uint32_t *)START_ADDR; (uintptr_t)addr < END_ADDR; addr+=4) {
        addr[0] = pattern;
        addr[1] = pattern;
        addr[2] = pattern;
        addr[3] = pattern;
    }

    printf("Write phase complete.\n");

    for (addr = (volatile uint32_t *)START_ADDR; (uintptr_t)addr < END_ADDR; addr+=4) {
        if (*addr != pattern) {
            // 如果读出的数据和预期不一致，则计数错误，并打印出出错地址和实际值
            printf("Data mismatch at address 0x%08lX: expected 0x%08X, got 0x%08X\n",
                   (unsigned long)addr, pattern, *addr);
            error_count++;
        }
    }
    
    if (error_count == 0) {
        printf("Memory read-back test passed: all values are correct.\n");
    } else {
        printf("Memory read-back test failed: %d errors detected.\n", error_count);
    }

    // 无限循环，避免程序退出    
    return 0;
}
