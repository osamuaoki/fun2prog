#!/bin/sh
PROG=gui-2
p "valac -C --pkg gtk+-3.0 --pkg gmodule-2.0 ${PROG}.vala"
p "wc -l ${PROG}.vala ; wc -l ${PROG}.c"
p "cat ${PROG}.c |sed -e 's/\t/    /g'|fold"

