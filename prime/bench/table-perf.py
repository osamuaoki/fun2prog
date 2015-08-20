#!/usr/bin/python
# vi:ts=4:sts=4:et
# == c-list
#                  0      context-switches
#                  0      cpu-migrations
#                784      page-faults
#          484275890      cycles
#          131868649      stalled-cycles-frontend
#           15810580      stalled-cycles-backend
#          224008635      instructions
#           63839867      branches
#             436925      branch-misses
#        0.236179310 seconds time elapsed
import sys, os, re
def tableline(item):
    print "|" + item + "|" + perf[0][item] + "|" +  perf[1][item]  + "|" + perf[2][item] + "|" +  perf[3][item]


perf = []
for j in range(0,4):
    data = {}
    line = sys.stdin.readline()
    for i in range(0,10):
        line = sys.stdin.readline()
        data[line[19:].strip()] = line[:19].strip()
    perf.append(data)

print "|Performance counter stats|C|Vala (Gee)|Python|Vala (GLib)"
tableline("context-switches")
tableline("cpu-migrations")
tableline("page-faults")
tableline("cycles")
tableline("stalled-cycles-frontend")
tableline("stalled-cycles-backend")
tableline("instructions")
tableline("branches")
tableline("branch-misses")
tableline("seconds time elapsed")


