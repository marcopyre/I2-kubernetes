kubectl apply -f ./metallb-config.yaml
kubectl apply -f ./nfs-storage-class.yaml
kubectl patch storageclass local-path -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'