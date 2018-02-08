while true ;do
for  ((i=1;i<=300;i++))
  do
    cat /proc/meminfo |grep MemAvailable |awk '{print $2}' >> 1.txt
    usleep 100
done
cat /proc/meminfo |grep MemAvailable |awk '{print $2}' > 1.txt
date -d today +"%H:%M:%S"
done