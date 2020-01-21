export CLUSTER_NAME="minikube"

APISERVER=$(kubectl config view -o jsonpath="{.clusters[?(@.name==\"$CLUSTER_NAME\")].cluster.server}")

echo $APISERVER

TOKEN=$(kubectl get secrets -o jsonpath="{.items[?(@.metadata.annotations['kubernetes\.io/service-account\.name']=='sa-admin')].data.token}"|base64 --decode)

echo $TOKEN

kubectl get no --server $APISERVER --token $TOKEN
