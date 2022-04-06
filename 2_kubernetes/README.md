# Deploy hello_world to kubernetes

### Run local kubernetes cluster
```
# Install k3d, kubectl

k3d cluster create --config k3d.yaml
doesn't work as it is, we need to change disableLoadbalancer: true to false

kubectl config use-context k3d-dev
```

### Complete the helm chart, use your hello_world:v1.0.0 image
```
resources: 
   limit:
     cpu: 100m
     memory: 128Mi
   requests:
     cpu: 100m
     memory: 128Mi
     
we pull the image, create clusterip using services, use ingress for networking and specify containers in deployment.

```

### Install the helm chart in `hello` namespace
```
sudo helm install hello-world ./hello-world

or

helm package hello-world
helm install hello-world hello-world-1.0.0.tgz

```

### You must be able to access http://localhost:8081 and get "Hello, World!"
```
Paste a screenshot of the browser

```

### Don't forget to delete the cluster
```
k3d cluster delete dev
```
