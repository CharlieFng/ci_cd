## Make sure local minikue and bamboo server are up
`minikube status`
[Bamboo dashbaord](http://localhost:8085)

## Remote local cached images since we need to use kubectl 1.14 +
```
docker rmi docker-arrow.anzgcis.com/kubectl-helm:latest
docker rmi charliefeng/kubectl-helm:latest
```

## Provision a admin servce account  
`kubectl apply -f sa-admin.yaml`

## Retrive api server ip and token, and test connectivity
`sh token.sh`

## Update **APISERVER** and **TOKEN** in the config file
`.kube/config`

## Use kubectl-helm to validate the kube config file 
```
docker run -it -v $PWD/.kube:/bamboo/.kube --rm docker-arrow.anzgcis.com/kubectl-helm:latest`
kubectl get node
```

## Run a docker runner task from bamboo to deploy wordpress app [Manually Steps]

## Access Wordpress application from browser
```
minikube ip
http://minikube_ip:32000
```

## Delete Wordpress application (under wordpress folder)
`kubectl delete -k ./`