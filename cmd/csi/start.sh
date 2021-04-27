#! /bin/bash
set -x

export TMPDIR=/home/work/go/tmp
export GO111MODULE=on
export GOPROXY=https://goproxy.io
export GOPATH=/home/work/go
export GOROOT=/home/work/go/local/go
export GOBIN=/home/work/go/bin


export PATH=$PATH:$GOBIN:$GOROOT/bin

rm -f /var/lib/kubelet/csi-plugins/fuse.csi.fluid.io/csi.sock
mkdir -p /var/lib/kubelet/csi-plugins/fuse.csi.fluid.io

cp /home/work/go/src/github.com/allenhaozi/fluid/csi/shell/check_mount.sh /usr/local/bin/check_mount.sh && chmod +x /usr/local/bin/check_mount.sh 

go run main.go start \
	--endpoint="unix://var/lib/kubelet/csi-plugins/fuse.csi.fluid.io/csi.sock" \
    --nodeid="fluid-dev-control-plane" \
	--kubeconfig=/etc/kubernetes/kubelet.conf \
	--v=5