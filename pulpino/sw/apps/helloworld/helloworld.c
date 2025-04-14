// Copyright 2017 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the “License”); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

/*
#include <stdio.h>

#define R1 4
#define C1 8 
#define R2 8
#define C2 4


unsigned int input_stimuli[] = {
	103, 115, 16, 116, 80, 12, 35, 69, 122, 123, 20, 123, 122, 62, 102, 18, 54, 116, 101, 122, 83, 5, 108, 119, 86, 96, 94, 50, 83, 22, 90, 4, // x11, x12, x13, x14...
	35, 6, 12, 105, 88, 40, 121, 4, 56, 48, 97, 101, 24, 62, 57, 82, 90, 96, 35, 86, 83, 21, 15, 63, 122, 43, 74, 28, 95, 32, 64, 89, 
	113, 122, 69, 18, 19, 33, 107, 32, 103, 31, 118, 44, 25, 32, 78, 60, 45, 106, 74, 70, 116, 36, 96, 96, 48, 72, 10, 7, 67, 99, 119, 16, 
	72, 60, 2, 43, 21, 101, 40, 67, 21, 76, 33, 83, 88, 95, 57, 11, 29, 116, 19, 105, 68, 127, 10, 56, 14, 122, 1, 98, 104, 110, 11, 51, 
	33, 102, 55, 116, 23, 34, 18, 17, 110, 74, 70, 18, 108, 79, 45, 65, 51, 10, 30, 16, 23, 30, 53, 6, 115, 120, 62, 62, 43, 114, 47, 14
};

unsigned int rom_coeff[] = { 
	3, 22, 11, 1, 8, 3, 1, 2,  // a11, a21, a31, a41....
	8, 15, 2, 4, 12, 6, 1, 2, 
	18, 40, 3, 2, 16, 9, 1, 2, 
	1, 10, 4, 0, 2, 12, 1, 2 
};

void matrixmult(unsigned int input_stimuli_[], unsigned int rom_coeff_[])
{
	unsigned int sum;
	int i,j,k;
	int x,y;
	int z = 0;
	int t,w;
	int v = 0;
	unsigned int input[R1][C1];
	unsigned int new_rom[R2][C2];

	printf("Multiplication of two matrices is:\n ");  


	for (y = 0;y < 8;y++){
		for (x = 0; x < 4; x++){
			input [x][y] = input_stimuli_[z];
			z++;
		}
	}

	for (w = 0;w < 4;w++){
		for (t = 0;t < 8;t++){
			new_rom [t][w] = rom_coeff_[v];
			v++;
		}

	}

	for (i = 0; i < C2; i++){       
		for (j = 0; j < R1; j++){                 
		     sum = 0;
		     for (k = 0; k < C1; k++){
		         sum += input[i][k] * new_rom[k][j];
		         
		     }
		     printf("%d\t", sum);
		}
		printf("\n");
	}

	return;
}

int main()
{
	int c=0;

	for (c = 0; c < 5; c++){
		matrixmult(input_stimuli + (32 * c),rom_coeff);
	}

	return 0;

}


*/






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
    // for (addr = START_ADDR;addr < END_ADDR; addr+=4) {
        *addr= pattern;
	addr += 4;
        *addr= pattern;
	//  addr[1] = pattern;
	// addr[2] = pattern;
	// addr[3] = pattern;
	//	 }
	addr -= 4;
 printf("Data mismatch at address 0x%08X: expected 0x%08X, got 0x%08X\n", addr, pattern, *addr);
	addr += 4;
 printf("Data mismatch at address 0x%08X: expected 0x%08X, got 0x%08X\n", addr, pattern, *addr);
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
