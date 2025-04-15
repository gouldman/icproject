// Copyright 2017 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the “License”); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.







#include <stdio.h>
#include <stdint.h>
#define START_ADDR ((uintptr_t)0x00100000)
#define END_ADDR   ((uintptr_t)0x00108000)
int main()
{
  printf("Hello World!!!!!\n");
    volatile uint32_t *addr;
    // Define a constant test pattern to write.
    uint32_t pattern = 0xDEADBEEF;
    int error_count = 0;
    printf("Starting memory write test...\n");
    printf("Writing test pattern 0x%08X to addresses from 0x%08X to 0x%08X.\n",pattern, START_ADDR, END_ADDR);
    for (addr = START_ADDR;addr < END_ADDR; addr+=4) {
        *addr= pattern;
	//	addr += 4;
	// *addr= pattern;
	//  addr[1] = pattern;
	// addr[2] = pattern;
	// addr[3] = pattern;
		 }
	//	addr -= 4;
    //printf("Data mismatch at address 0x%08X: expected 0x%08X, got 0x%08X\n", addr, pattern, *addr);
 //	addr += 4;
 // printf("Data mismatch at address 0x%08X: expected 0x%08X, got 0x%08X\n", addr, pattern, *addr);
    printf("Write phase complete.\n");

  return 0;
}




/*
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
*/
