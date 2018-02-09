rm -rf scale.txt
while test ! -s scale.txt ; do
#如果文件不存在开始循环
python memory.py
awk '{printf("%d\n",$1)}' predict.txt > out.txt
cat out.txt | awk '$1 < 11600000 {print "ok"}'> scale.txt
if test -s scale.txt; then
#-s FILE    FILE exists and has a size greater than zero   如果文件存在且文件大小大于零，则返回真
echo "scaling"
ssh root@es1 'kubectl scale --replicas=6 -f /home/centos/tomcat/tomcat.yaml'
echo "scale succeed"
else
echo "it's well"
fi
sleep 5
done