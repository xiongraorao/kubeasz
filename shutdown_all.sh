echo "***1. shutdown etcd***"
echo
ansible all -m shell -a "systemctl stop etcd"

echo "***2. shutdown kube-apiserver***"
echo
ansible all -m shell -a "systemctl stop kube-apiserver"
echo "***3. shutdown kube-controller-manager***"
echo
ansible all -m shell -a "systemctl stop kube-controller-manager"
echo "***4. shutdown kube-scheduler***"
echo
ansible all -m shell -a "systemctl stop kube-scheduler"
echo "***5. shutdown kube-apiserver***"
echo
ansible all -m shell -a "systemctl stop kube-proxy"
echo "***6. shutdown kubelet***"
echo
ansible all -m shell -a "systemctl stop kubelet"

