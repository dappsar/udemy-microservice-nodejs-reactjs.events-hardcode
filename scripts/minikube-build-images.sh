eval $(minikube docker-env)
minikube addons enable registry
kubectl port-forward --namespace kube-system service/registry 5000:80 &
cd ..; cd posts; docker build -t localhost:5000/posts .; docker push localhost:5000/posts
cd ..; cd comments; docker build -t localhost:5000/comments .; docker push localhost:5000/comments
cd ..; cd moderation; docker build -t localhost:5000/moderation .; docker push localhost:5000/moderation
cd ..; cd event-bus; docker build -t localhost:5000/event-bus .; docker push localhost:5000/event-bus
cd ..; cd query; docker build -t localhost:5000/query .; docker push localhost:5000/query
cd ..; cd client; docker build -t localhost:5000/client .; docker push localhost:5000/client
cd ..


