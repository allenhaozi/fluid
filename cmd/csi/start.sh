go run main.go start \
	--endpoint="unix://Users/mahao/k8s/kind/fluid/kind-node/var/lib/kubelet/csi-plugins/fuse.csi.fluid.io/csi.sock" \
    --nodeid="fluid-dev-worker" \
	--kubeconfig="/Users/mahao/.kube/config" \
	--v=5

