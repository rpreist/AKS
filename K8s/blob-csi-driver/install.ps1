helm install blob-csi-driver kubernetes-sigs/blob-csi-driver --set node.enableBlobfuseProxy=true --namespace kube-system --set cloud=AzureStackCloud
