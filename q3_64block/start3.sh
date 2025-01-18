#   #!/bin/bash   



#--------------------------------------------------------------------------------------- 64 Tile2048	

cd m20ijk
g++ -O2 -o m2064ijk matrix2048.cpp
perf stat -e branches,branch-misses,bus-cycles,cache-misses,cache-references,cpu-cycles,instructions,page-faults,duration_time,L1-dcache-load-misses,L1-dcache-loads,L1-dcache-stores,L1-icache-load-misses,l2_rqsts.all_code_rd,l2_rqsts.all_demand_data_rd,l2_rqsts.all_demand_miss,l2_rqsts.all_demand_references,l2_rqsts.code_rd_hit,l2_rqsts.code_rd_miss,l2_rqsts.demand_data_rd_hit,l2_rqsts.demand_data_rd_miss,LLC-load-misses,LLC-loads,LLC-store-misses,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,dTLB-loads,dTLB-store-misses,dTLB-stores,iTLB-load-misses,L2-load-misses,L2-store-misses,L2-misses,L1-dcache-misses,LLC-misses,dTLB-misses,iTLB-misses ./m2064ijk 2>&1 | tee ../Output1/m2064ijk_Output1.txt
cd../

cd m20jik
g++ -O2 -o m2064jik matrix2048.cpp
perf stat -e branches,branch-misses,bus-cycles,cache-misses,cache-references,cpu-cycles,instructions,page-faults,duration_time,L1-dcache-load-misses,L1-dcache-loads,L1-dcache-stores,L1-icache-load-misses,l2_rqsts.all_code_rd,l2_rqsts.all_demand_data_rd,l2_rqsts.all_demand_miss,l2_rqsts.all_demand_references,l2_rqsts.code_rd_hit,l2_rqsts.code_rd_miss,l2_rqsts.demand_data_rd_hit,l2_rqsts.demand_data_rd_miss,LLC-load-misses,LLC-loads,LLC-store-misses,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,dTLB-loads,dTLB-store-misses,dTLB-stores,iTLB-load-misses,L2-load-misses,L2-store-misses,L2-misses,L1-dcache-misses,LLC-misses,dTLB-misses,iTLB-misses ./m2064jik 2>&1 | tee ../Output1/m2064jik_Output1.txt
cd../


cd m20kij
g++ -O2 -o m2064kij matrix2048.cpp
perf stat -e branches,branch-misses,bus-cycles,cache-misses,cache-references,cpu-cycles,instructions,page-faults,duration_time,L1-dcache-load-misses,L1-dcache-loads,L1-dcache-stores,L1-icache-load-misses,l2_rqsts.all_code_rd,l2_rqsts.all_demand_data_rd,l2_rqsts.all_demand_miss,l2_rqsts.all_demand_references,l2_rqsts.code_rd_hit,l2_rqsts.code_rd_miss,l2_rqsts.demand_data_rd_hit,l2_rqsts.demand_data_rd_miss,LLC-load-misses,LLC-loads,LLC-store-misses,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,dTLB-loads,dTLB-store-misses,dTLB-stores,iTLB-load-misses,L2-load-misses,L2-store-misses,L2-misses,L1-dcache-misses,LLC-misses,dTLB-misses,iTLB-misses ./m2064kij 2>&1 | tee ../Output1/m2064kij_Output1.txt
cd../




#--------------------------------------------------------------------------------------- 64 Title 8192

cd m81ijk
g++ -O2 -o m8164ijk matrix8192.cpp
perf stat -e branches,branch-misses,bus-cycles,cache-misses,cache-references,cpu-cycles,instructions,page-faults,duration_time,L1-dcache-load-misses,L1-dcache-loads,L1-dcache-stores,L1-icache-load-misses,l2_rqsts.all_code_rd,l2_rqsts.all_demand_data_rd,l2_rqsts.all_demand_miss,l2_rqsts.all_demand_references,l2_rqsts.code_rd_hit,l2_rqsts.code_rd_miss,l2_rqsts.demand_data_rd_hit,l2_rqsts.demand_data_rd_miss,LLC-load-misses,LLC-loads,LLC-store-misses,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,dTLB-loads,dTLB-store-misses,dTLB-stores,iTLB-load-misses,L2-load-misses,L2-store-misses,L2-misses,L1-dcache-misses,LLC-misses,dTLB-misses,iTLB-misses ./m8164ijk 2>&1 | tee ../Output1/m8164ijk_Output1.txt
cd../


cd m81jik
g++ -O2 -o m8164jik matrix8192.cpp
perf stat -e branches,branch-misses,bus-cycles,cache-misses,cache-references,cpu-cycles,instructions,page-faults,duration_time,L1-dcache-load-misses,L1-dcache-loads,L1-dcache-stores,L1-icache-load-misses,l2_rqsts.all_code_rd,l2_rqsts.all_demand_data_rd,l2_rqsts.all_demand_miss,l2_rqsts.all_demand_references,l2_rqsts.code_rd_hit,l2_rqsts.code_rd_miss,l2_rqsts.demand_data_rd_hit,l2_rqsts.demand_data_rd_miss,LLC-load-misses,LLC-loads,LLC-store-misses,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,dTLB-loads,dTLB-store-misses,dTLB-stores,iTLB-load-misses,L2-load-misses,L2-store-misses,L2-misses,L1-dcache-misses,LLC-misses,dTLB-misses,iTLB-misses ./m8164jik 2>&1 | tee ../Output1/m8164jik_Output1.txt
cd../


cd m81kij
g++ -O2 -o m8164kij matrix8192.cpp
perf stat -e branches,branch-misses,bus-cycles,cache-misses,cache-references,cpu-cycles,instructions,page-faults,duration_time,L1-dcache-load-misses,L1-dcache-loads,L1-dcache-stores,L1-icache-load-misses,l2_rqsts.all_code_rd,l2_rqsts.all_demand_data_rd,l2_rqsts.all_demand_miss,l2_rqsts.all_demand_references,l2_rqsts.code_rd_hit,l2_rqsts.code_rd_miss,l2_rqsts.demand_data_rd_hit,l2_rqsts.demand_data_rd_miss,LLC-load-misses,LLC-loads,LLC-store-misses,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,dTLB-loads,dTLB-store-misses,dTLB-stores,iTLB-load-misses,L2-load-misses,L2-store-misses,L2-misses,L1-dcache-misses,LLC-misses,dTLB-misses,iTLB-misses ./m8164kij 2>&1 | tee ../Output1/m8164kij_Output1.txt
cd../

