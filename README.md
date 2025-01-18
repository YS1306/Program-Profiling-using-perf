
# Performance Analysis Using `perf`
The objective of this experiment is to understand the correlation between the memory performance and execution
time for different variations of Matrix Multiplication Programs. Here, we have tested matrices of two sizes i.e.
2048×2048 and 8192×8192. Also we have tried three variations of Program – One with regular 4KB pages, one
with huge pages of 2MB and one with tiling of size 64 in parts 1.1.1, 1.1.2, 1.1.3 respectively. For performance
analysis, we are using the perf tool which is available through linux terminal. 
The directory consists of three subdirectories: `q1`, `q2_2mb`, and `q3_64block` for part (a), part (b), and part (c) respectively. We are using the `perf` tool for performance analysis.

## Installing `perf`

To install `perf`, run the following commands in the terminal:

```bash
sudo apt update
sudo apt install linux-tools-$(uname -r)
```

The above command automatically installs the required version of `perf` for the machine.

## Part (a): Running the Analysis

1. Open the Linux terminal and make sure your current directory is `CAAF1`.
2. Change to the `q1` directory:
   
   ```bash
   cd q1
   ```

3. The file `start1.sh` contains the code for generating the output files and performing analysis using `perf`, then saving the results into text files. To execute this file run following command on the terminal:
   ```bash
   ./start1.sh
   ```
4. The results can be read in the `Output1` folder inside the `q1` directory.

## Part (b): Running the Analysis with Huge Pages

1. Open the Linux terminal and make sure your current directory is `CAAF1`.
2. Change to the `q2_2mb` directory:
   
   ```bash
   cd q2_2mb
   ```

3. Before executing the program, we need to enable huge pages of size 2MB for the program. This task is performed internally by the `start2.sh` file.
4. The `start2.sh` file contains the code for enabling huge pages, compiling the program, generating the output files, performing analysis using `perf`, and then saving the results into text files.To execute this file run following command on the terminal:
   ```bash
   ./start2.sh
   ```
5. At the end of the execution, the `start2.sh` file also disables all the huge pages.
6. The results can be viewed in the `Output1` folder.

## Part (c): Running the Analysis for 64-tiling Configuration

1. Open the Linux terminal and make sure your current directory is `CAAF1`.
2. Change to the `q3_64block` directory:
   
   ```bash
   cd q3_64block
   ```

3. The file `start3.sh` contains the code for compiling the program, generating the output files, performing analysis using `perf`, and then saving the results into text files.To execute this file run following command on the terminal:
   ```bash
   ./start2.sh
   ```
4. The results can be viewed in the `Output1` folder.

## Results
1.1.1 Correlation of different version of matrix multiplication 

Here we have used regular page size of 4KB for matrices of sizes 2048×2048 and 8192×8192.  

Here Table 1 has seven rows representing parameters for evaluation and three columns representing 3 variations of for loop used in matrix multiplication for matrix size 2048 obtained using perf: 

| **Matrix Size/Variation** |                 | **2048 x 2048** |                 |
|---------------------------|-----------------|-----------------|-----------------|
| **Metric**                | **ijk**         | **jik**         | **kij**         |
| **L1-misses**             | 13,18,11,37,025 | 12,70,99,07,320 | 57,36,97,582    |
| **L2-misses**             | 9,03,02,044     | 1,52,56,493     | 65,95,455       |
| **LLC-misses**            | 9,07,00,738     | 1,52,10,878     | 67,58,656       |
| **Cache-misses**          | 40,91,54,904    | 17,60,50,823    | 36,36,37,369    |
| **Page fault**            | 14,503          | 14,504          | 12,448          |
| **Branch-misses**         | 43,62,879       | 43,71,191       | 44,07,806       |
| **Time elapsed**          | 14.30 seconds   | 10.83 seconds   | 4.83 seconds    |


Table 1: Comparing various parameters for every variation for 4kb 

### Observation 

From the above table it's clearly visible that kij variation takes less time to execute as compared to variations ijk and jik. The primary reason for that is less number of L1 cache misses and lesser number of overall cache misses (L2 and LLC), in the variation kij in comparison with variations ijk and jik. Here, one observation is that the difference in L1 Cache misses affects the execution time the most. 

In between the variations ijk and jik , jik performs better, which again is because of the lesser number of  cache misses in jik than ijk. Again the L1 cache misses are a dominating factor affecting the execution time of the program. 



Here Table 2 has seven rows representing parameters for evaluation and three columns representing 3 variations of for loop used in matrix multiplication for matrix size 8192.
| **Metric**          | **ijk**               | **jik**               | **kij**               |
|---------------------|-----------------------|-----------------------|-----------------------|
| **L1-misses**       | 11,99,31,91,09,889   | 11,77,11,62,63,566   | 69,39,38,16,138      |
| **L2-misses**       | 96,15,32,703         | 87,65,49,873         | 24,63,30,608         |
| **LLC-misses**      | 96,64,09,698         | 87,63,22,477         | 24,61,95,843         |
| **Cache-misses**    | 51,65,31,88,152      | 34,85,82,30,393      | 29,18,56,40,165      |
| **Page faults**     | 254,251              | 254,253              | 196,875              |
| **Branch-misses**   | 7,73,32,823          | 7,44,16,220          | 7,19,07,364          |
| **Time elapsed**    | 3630.56 seconds      | 3502.89 seconds      | 280.34 seconds       |

Table 2: Comparing various parameters for every variation for 4kb

### Observation 

In this case also, we can observe that the variation kij takes very less time as compared to the other two variations, the primary reason for that is less L1 cache misses and overall cache misses (L2 and LLC) in kij in comparison with ijk and jik. 

In between variations ijk and jik, jik performs better. Again, the difference in L1 cache misses affects the execution time. 

### Conclusion

After analying all these data, we can conclude that, the most dominating factor that affects the exection time of these programs is the number of L1 Cache misses. As we go down in the memory hierarchy, the influence on the execution time of the programs gradually decreases.  

In the larger size matrix, we can see significant differences in execution of all variations, and it's obvious 8192 matrix have more execution time compared to 2048 size matrix. 


