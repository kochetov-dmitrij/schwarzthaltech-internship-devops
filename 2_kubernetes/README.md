# Deploy hello_world to kubernetes

### Run local kubernetes cluster
```
# Install k3d, kubectl

k3d cluster create --config k3d.yaml
kubectl config use-context k3d-dev
```

### Complete the helm chart, use your hello_world:v1.0.0 image
```
Describe the k8s resources from the chart, what they are for

```

### Install the helm chart in `hello` namespace
```
Type here the command for installing

```

### You must be able to access http://localhost:8081 and get "Hello, World!"
```
Paste a screenshot of the browser

```

### Don't forget to delete the cluster
```
k3d cluster delete dev
```