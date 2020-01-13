# Prior install 

## Create a network for your instance 
`docker network create bamboo`

## Create a volume for your instance, where bamboo will backup application data 
`docker volume create --name bambooVolume`

# [Optional] Build your local docker image 
`docker build -t bamboo-docker:latest .`

# Spin up your docker bamboo instance
## Fetch remote image from docker hub
`docker run -v /var/run/docker.sock:/var/run/docker.sock -v bambooVolume:/var/atlassian/application-data/bamboo --name="bamboo-docker" --init -d -p 54663:54663 -p 8085:8085 charliefeng/bamboo-docker:latest`

OR

## Use your local built image
`docker run -v /var/run/docker.sock:/var/run/docker.sock -v bambooVolume:/var/atlassian/application-data/bamboo --name="bamboo-docker" --init -d -p 54663:54663 -p 8085:8085 bamboo-docker:latest`

# Post Install 
## Check bamboo dashboard from brower 
[Bamboo dashbaord](http://localhost:8085)

## Follow bamboo guideline to generate a trial license key
[Login to Atlassian with your email account to generate New Trial License](https://my.atlassian.com/products/)

