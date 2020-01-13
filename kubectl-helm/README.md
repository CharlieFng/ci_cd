# Prior install 
## Ask Admin to generate a service account and its token for authentication with GKE
## Update **SERVER** and **TOKEN** in the config file  
`.kube/config`


# [Optional] Build your local docker image 
`docker build -t kubectl-helm:latest .`


# Spin up your docke instance with *kubectl*, *helm* and *make* capabilities
## Fetch remote image from docker hub
`docker run -it -v $PWD/.kube:/bamboo/.kube --rm charliefeng/kubectl-helm:latest`

OR

## Use your local built image
`docker run -it -v $PWD/.kube:/bamboo/.kube --rm kubectl-helm:latest`


# Post Install
## Validate capabilities
```bash
kubectl version
helm version
make -v
```

