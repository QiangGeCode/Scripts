/usr/bin/date | /usr/bin/tr '\n' '\t' >> /root/cpu_temp.csv ;  echo -n ", " >> /root/cpu_temp.csv; /usr/bin/sensors | /usr/bin/awk "/Package id 0:/{print}" | /usr/bin/cut -c 17-20 >> /root/cpu_temp.csv
