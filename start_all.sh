echo "***1. start etcd***"
echo
ansible all -m shell -a "systemctl daemon-reload && systemctl restart etcd"

echo "***2. start kube-apiserver***"
echo
ansible all -m shell -a "systemctl daemon-reload && systemctl restart kube-apiserver"
echo "***3. start kube-controller-manager***"
echo
ansible all -m shell -a "systemctl daemon-reload && systemctl restart kube-controller-manager"
echo "***4. start kube-scheduler***"
echo
ansible all -m shell -a "systemctl daemon-reload && systemctl restart kube-scheduler"
echo "***5. start kube-apiserver***"
echo
ansible all -m shell -a "systemctl daemon-reload && systemctl restart kube-proxy"
echo "***6. start kubelet***"
echo
ansible all -m shell -a "systemctl daemon-reload && systemctl restart kubelet"

