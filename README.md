
# Performance Analysis Using `perf`

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
