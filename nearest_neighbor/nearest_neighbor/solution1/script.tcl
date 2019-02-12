############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project nearest_neighbor
set_top execute
add_files kth_search.cpp
add_files kth_search.h
add_files -tb kth_search_test.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
source "./nearest_neighbor/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
