# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR /home/labarqcomp/Downloads/Embarcados2020-master/Lab3_FPGA_IP/software/Lab3/mem_init/sim
source /home/labarqcomp/Downloads/Embarcados2020-master/Lab3_FPGA_IP/software/Lab3/mem_init/sim/mentor/msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force /home/labarqcomp/SoC-Linux-Emb/Lab3_FPGA_IP/software/niosLab3/mem_init/hdl_sim/niosLab2_onchip_memory2_0.dat ./ 
file copy -force /home/labarqcomp/SoC-Linux-Emb/Lab3_FPGA_IP/software/niosLab3/mem_init/niosLab2_onchip_memory2_0.hex ./ 
