source ./steamcredentials

kubectl get secret arma3-secrets||kubectl create secret generic arma3-secrets --from-literal=STEAM_USERNAME=$STEAM_USERNAME --from-literal=STEAM_PASSWORD=${STEAM_PASSWORD}
kubectl apply -f kubernetes

