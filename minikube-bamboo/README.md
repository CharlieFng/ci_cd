## Make sure local minikue and bamboo server are up

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