这个dashboard通过nodedIP:Port进行访问
(不能访问的原因是因为**防火墙未关闭**)
1. 这里需要先在node节点拉取镜像`gcr.io/google_containers/kubernetes-dashboard-amd64:v1.6.0`
2. 通过`kubectl get svc --all-namespaces `可以知道node节点的访问ip与端口
3. Service.yaml文件的`type: NodePort`可以把服务的端口映射出来