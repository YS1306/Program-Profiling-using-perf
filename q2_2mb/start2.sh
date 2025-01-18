
#   #!/bin/bash

#------------------------------------CODE TO enable 2MB PAGES

cat /proc/cpuinfo | grep -i huge
echo 2000 | sudo tee /proc/sys/vm/nr_hugepages
sudo sysctl -w vm.nr_hugepages=2000 

#--------------------------------------------------------------------------------------- 2MB Page 2048	

cd m20ijk
g++ -O2 -o m202MBijk matrix2MB.cpp
perf stat -e branches,branch-misses,bus-cycles,cache-misses,cache-references,cpu-cycles,instructions,page-faults,duration_time,L1-dcache-load-misses,L1-dcache-loads,L1-dcache-stores,L1-icache-load-misses,l2_rqsts.all_code_rd,l2_rqsts.all_demand_data_rd,l2_rqsts.all_demand_miss,l2_rqsts.all_demand_references,l2_rqsts.code_rd_hit,l2_rqsts.code_rd_miss,l2_rqsts.demand_data_rd_hit,l2_rqsts.demand_data_rd_miss,LLC-load-misses,LLC-loads,LLC-store-misses,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,dTLB-loads,dTLB-store-misses,dTLB-stores,iTLB-load-misses,L2-load-misses,L2-store-misses,L2-misses,L1-dcache-misses,LLC-misses,dTLB-misses,iTLB-misses ./m202MBijk 2>&1 | tee ../Output1/m202MBijk_Output1.txt
cd ../

cd m20jik
g++ -O2 -o m202MBjik matrix2MB.cpp
perf stat -e branches,branch-misses,bus-cycles,cache-misses,cache-references,cpu-cycles,instructions,page-faults,duration_time,L1-dcache-load-misses,L1-dcache-loads,L1-dcache-stores,L1-icache-load-misses,l2_rqsts.all_code_rd,l2_rqsts.all_demand_data_rd,l2_rqsts.all_demand_miss,l2_rqsts.all_demand_references,l2_rqsts.code_rd_hit,l2_rqsts.code_rd_miss,l2_rqsts.demand_data_rd_hit,l2_rqsts.demand_data_rd_miss,LLC-load-misses,LLC-loads,LLC-store-misses,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,dTLB-loads,dTLB-store-misses,dTLB-stores,iTLB-load-misses,L2-load-misses,L2-store-misses,L2-misses,L1-dcache-misses,LLC-misses,dTLB-misses,iTLB-misses ./m202MBjik 2>&1 | tee ../Output1/m202MBjik_Output1.txt
cd ../


cd m20kij
g++ -O2 -o m202MBkij matrix2MB.cpp
perf stat -e branches,branch-misses,bus-cycles,cache-misses,cache-references,cpu-cycles,instructions,page-faults,duration_time,L1-dcache-load-misses,L1-dcache-loads,L1-dcache-stores,L1-icache-load-misses,l2_rqsts.all_code_rd,l2_rqsts.all_demand_data_rd,l2_rqsts.all_demand_miss,l2_rqsts.all_demand_references,l2_rqsts.code_rd_hit,l2_rqsts.code_rd_miss,l2_rqsts.demand_data_rd_hit,l2_rqsts.demand_data_rd_miss,LLC-load-misses,LLC-loads,LLC-store-misses,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,dTLB-loads,dTLB-store-misses,dTLB-stores,iTLB-load-misses,L2-load-misses,L2-store-misses,L2-misses,L1-dcache-misses,LLC-misses,dTLB-misses,iTLB-misses ./m202MBkij 2>&1 | tee ../Output1/m202MBkij_Output1.txt
cd ../


#----------------------------------------------------------------------------------- 2MB Page 8192

cd m81ijk
g++ -O2 -o m812MBijk matrix2MB.cpp
perf stat -e branches,branch-misses,bus-cycles,cache-misses,cache-references,cpu-cycles,instructions,page-faults,duration_time,L1-dcache-load-misses,L1-dcache-loads,L1-dcache-stores,L1-icache-load-misses,l2_rqsts.all_code_rd,l2_rqsts.all_demand_data_rd,l2_rqsts.all_demand_miss,l2_rqsts.all_demand_references,l2_rqsts.code_rd_hit,l2_rqsts.code_rd_miss,l2_rqsts.demand_data_rd_hit,l2_rqsts.demand_data_rd_miss,LLC-load-misses,LLC-loads,LLC-store-misses,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,dTLB-loads,dTLB-store-misses,dTLB-stores,iTLB-load-misses,L2-load-misses,L2-store-misses,L2-misses,L1-dcache-misses,LLC-misses,dTLB-misses,iTLB-misses ./m812MBijk 2>&1 | tee ../Output1/m812MBijk_Output1.txt
cd ../


cd m81jik
g++ -O2 -o m812MBjik matrix2MB.cpp
perf stat -e branches,branch-misses,bus-cycles,cache-misses,cache-references,cpu-cycles,instructions,page-faults,duration_time,L1-dcache-load-misses,L1-dcache-loads,L1-dcache-stores,L1-icache-load-misses,l2_rqsts.all_code_rd,l2_rqsts.all_demand_data_rd,l2_rqsts.all_demand_miss,l2_rqsts.all_demand_references,l2_rqsts.code_rd_hit,l2_rqsts.code_rd_miss,l2_rqsts.demand_data_rd_hit,l2_rqsts.demand_data_rd_miss,LLC-load-misses,LLC-loads,LLC-store-misses,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,dTLB-loads,dTLB-store-misses,dTLB-stores,iTLB-load-misses,L2-load-misses,L2-store-misses,L2-misses,L1-dcache-misses,LLC-misses,dTLB-misses,iTLB-misses ./m812MBjik 2>&1 | tee ../Output1/m812MBjik_Output1.txt
cd ../


cd m81kij
g++ -O2 -o m812MBkij matrix2MB.cpp
perf stat -e branches,branch-misses,bus-cycles,cache-misses,cache-references,cpu-cycles,instructions,page-faults,duration_time,L1-dcache-load-misses,L1-dcache-loads,L1-dcache-stores,L1-icache-load-misses,l2_rqsts.all_code_rd,l2_rqsts.all_demand_data_rd,l2_rqsts.all_demand_miss,l2_rqsts.all_demand_references,l2_rqsts.code_rd_hit,l2_rqsts.code_rd_miss,l2_rqsts.demand_data_rd_hit,l2_rqsts.demand_data_rd_miss,LLC-load-misses,LLC-loads,LLC-store-misses,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,dTLB-loads,dTLB-store-misses,dTLB-stores,iTLB-load-misses,L2-load-misses,L2-store-misses,L2-misses,L1-dcache-misses,LLC-misses,dTLB-misses,iTLB-misses ./m812MBkij 2>&1 | tee ../Output1/m812MBkij_Output1.txt
cd ../


 #------------CODE TO DISABLE 2MB PAGES
  
cat /proc/cpuinfo | grep -i huge
echo 0 | sudo tee /proc/sys/vm/nr_hugepages
sudo sysctl -w vm.nr_hugepages=0 
