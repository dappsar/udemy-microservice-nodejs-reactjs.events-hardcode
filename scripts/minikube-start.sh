  minikube start
  minikube addons enable registry
  minikube addons enable ingress
  minikube addons enable dashboard
  eval $(minikube docker-env)
  # manually add "[minikube IP]  posts.com" to hosts file
  