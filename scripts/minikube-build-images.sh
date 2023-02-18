eval $(minikube docker-env)
minikube addons enable registry
cd ..; cd posts; docker build -t localhost:5000/posts .; docker push localhost:5000/posts
cd ..; cd comments; docker build -t localhost:5000/comments .; docker push localhost:5000/comments
cd ..; cd moderation; docker build -t localhost:5000/moderation .; docker push localhost:5000/moderation
cd ..; cd event-bus; docker build -t localhost:5000/event-bus .; docker push localhost:5000/event-bus
cd ..; cd query; docker build -t localhost:5000/query .; docker push localhost:5000/query
cd ..; cd client; docker build -t localhost:5000/client .; docker push localhost:5000/client
cd ..

# In order to make docker accept pushing images to this registry, we have to redirect port 5000 on the docker virtual machine over to port 80 on the minikube registry service. Unfortunately, the docker vm cannot directly see the IP address of the minikube vm. To fix this, you will have to add one more level of redirection.
# Use kubectl port-forward to map your local workstation to the minikube vm: kubectl port-forward --namespace kube-system service/registry 5000:80
# More info: https://minikube.sigs.k8s.io/docs/handbook/registry/
