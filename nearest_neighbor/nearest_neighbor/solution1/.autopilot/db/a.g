#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/rhein/Desktop/kth_search/nearest_neighbor/nearest_neighbor/solution1/.autopilot/db/a.g.bc ${1+"$@"}