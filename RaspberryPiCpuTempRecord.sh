#!/bin/bash
/bin/date | /usr/bin/tr '\n' '\t' >> /home/pi/cpu_temp.csv ; echo -n ", " >> /home/pi/cpu_temp.csv; /usr/bin/vcgencmd measure_temp| /usr/bin/tr -d "temp=" | /usr/bin/tr -d "'C" >> /home/pi/cpu_temp.csv
