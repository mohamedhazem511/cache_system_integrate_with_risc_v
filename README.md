# Cache Controller Implementation with Write-Through Policy & integrate with single cycle RISC-V 

### Teamwork:
#### 1. Mo'men Alaa Aldeen Abd Alkader.
   - Track: Digital IC Design.
#### 2. Mohamed Hazem Mamdouh.
   - Track: Digital IC Verification.

 ##  
   - This project is done after verilog course from Information Technology Institute (ITI).
    
# Description:
This project is to implement a simple cache system and integrate it with the RISC-V processor you previously implemented. 
## Introduction:
 In this project, we will work on implementing a simple caching system for the RISC-V processor.
 For simplicity, we will integrate the caching system with the single-cycle implementation.
 Additionally, we assume the following:-
 - Only data memory will be cached. The instruction memory will not be affected.
 - We will have only one level of caching.
 - The main memory module is assumed to have a capacity of 4 Kbytes (word addressable using 10 bits or byte addressable using 12 bits).
 - Main memory access (for read or write) takes 4 clock cycles.
 - The data cache geometry is (512, 16, 1). This means that the total cache capacity is 512 bytes, that each cache block is 16 bytes (implying that the cache has 32 blocks in total), and that the cache uses direct mapping.
 - The cache uses write-through and write-around policies for write hit and write miss handling and no write buffers exist. This implies that all SW instructions need to stall the processor.
 - LW instructions will only stall the processor in case of a miss.

# Cache Memory Specs:-
- Associativity: Direct mapping.
- Cache Size: 512 bytes.
- Block Size: 16 bytes.
- Address Size: 10 bits.
- offset: 2 bits.
- Index: 5 bits.
- Tag: 3 bits.
- Valid: 1 bit.
- write-through at write hit, we write at the cache & data memory.
- write-around at write miss, we write at data memory only.

### To control the valid bit array, you need to perform the following operations:
- Initialization  : Set all valid bits to 0 when the cache is reset or initialized.
- Load Data       : When data is fetched from the main memory and loaded into a cache line, set the corresponding valid bit to 1 to indicate that the cache line now contains valid data.
- Invalidate Data : If data in a cache line becomes invalid (e.g., due to a write to that memory location), set the corresponding valid bit to 0 to indicate that the cache line no longer contains valid data.

### To control the tag array, you need to perform the following operations:
- Initialization  : Set all tag entries to a value that indicates an invalid or empty entry (e.g., all 0s) when the cache is reset or initialized.
- Load Data       : When data is fetched from the main memory and loaded into a cache line, store the corresponding memory address or tag in the tag entry associated with that cache line.
- Cache Lookup    : When a memory address is requested, compare the requested address with the tags in the tag array. If a match is found, it indicates that the requested data is present in the cache.
- Invalidate Data : If data in a cache line becomes invalid (e.g., due to a write to that memory location), clear the tag entry associated with that cache line to indicate that the entry is now empty.


# Block Diagram:

![Screenshot 2023-09-09 144629](https://github.com/mohamedhazem511/cache_system_integrate_with_risc_v/assets/114261199/2d1abbac-db8f-468f-9725-005c895e271b)




# FSM Diagram:

![FSM_Diagram drawio](https://github.com/mohamedhazem511/cache_system_integrate_with_risc_v/assets/114261199/b73baf8a-3769-4c64-9533-f06ce1966a24)


# ********** Assembly Code **********
- addi x2, x0 ,5 # x2 = 5
- addi x3, x0, 12 # x3 = 12
- addi x7, x3, -9 # x7 = (12 - 9) = 3
- addi x4, x0, 15 # x4 = 15
- sw x7, 84(x3) # (84 + x3) = [96] = 3
- lw x2, 84(x3) # x2 = [96] = 3
- sw x4, 112(x0) # (112 + x0) = [112] = 15
- sw x3, 114(x0) # [114] = 12
- sw x4, 200(x0) # [200] = 15
- lw x2, 84(x3) # x2 = [96] = 3
- lw x3, 112(x0) # x3 = [112] = 15
- lw x5, 114(x0) # x5 = [114] = 12
- lw x8, 200(x0) # x8 = [200] = 15
- sw x2, 200(x0) # [200] = 3

# ********** Machine Code **********

- 00500113
- 00c00193
- ff718393
- 00f00213
- 0471aa23
- 0541a103
- 06402823
- 06302923
- 0c402423
- 0541a103
- 07002183
- 07202283 
- 0c802403
- 0c202423

# Simulation:



![Simulation](https://github.com/mohamedhazem511/cache_system_integrate_with_risc_v/assets/114261199/bfb417df-e9c5-4040-b161-4062a5b3b29b)


# Cache memory:


![cache](https://github.com/mohamedhazem511/cache_system_integrate_with_risc_v/assets/114261199/ab6fba09-76ff-4170-8231-bd29bb4ba265)

# Data Memory:

![data_mem](https://github.com/mohamedhazem511/cache_system_integrate_with_risc_v/assets/114261199/49f74859-60c6-44c2-9d1b-7e3e5565e52d)

# Top level Architecture of RISC-V with Cache memory:


![arch](https://github.com/mohamedhazem511/cache_system_integrate_with_risc_v/assets/114261199/0db508c2-bbad-4829-98eb-7603b5224566)

![arch2](https://github.com/mohamedhazem511/cache_system_integrate_with_risc_v/assets/114261199/11f81498-30df-49e2-8c0c-1c9510bc1227)



# Cache System Diagram:

![arch3](https://github.com/mohamedhazem511/cache_system_integrate_with_risc_v/assets/114261199/ca96079c-97d3-4ae2-8b67-16dd9dbf13f5)
