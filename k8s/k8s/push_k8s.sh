images=(kube-proxy-amd64:v1.6.6 kube-scheduler-amd64:v1.6.6 kube-controller-manager-amd64:v1.6.6 kube-apiserver-amd64:v1.6.6 etcd-amd64:3.0.17 pause-amd64:3.0 kubernetes-dashboard-amd64:v1.6.1 k8s-dns-sidecar-amd64:1.14.2 k8s-dns-kube-dns-amd64:1.14.2 k8s-dns-dnsmasq-nanny-amd64:1.14.2  etcd:v3.1.5)
for imageName in ${images[@]} ; do
  sudo docker tag gcr.io/google_containers/$imageName e2:80/k8s/$imageName
  sudo docker push e2:80/k8s/$imageName
  sudo docker rmi e2:80/k8s/$imageName
done
