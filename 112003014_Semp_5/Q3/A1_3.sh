#!/bin/bash
find . -type f -ctime -20 | ls -la -S | head -n10 #-S sort in descending #ls-la detailed desc. #-type f select files only #.find in present directory