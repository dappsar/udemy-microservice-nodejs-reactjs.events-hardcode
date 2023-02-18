# Kubectl Coomands

## Docker command equivalent in Kubectl

- docker ps / kubeclt get pods
- docker exec -it [container id][cmd] / kubectl exec -it [pod_name][cmd]
- docekr logs [container id] / kubectl logs [pod_name]

## Pods Commands

- kubectl delete pod [pod_name]

- kubectl apply -f [config file name]

- kubectl describe pod [pod-name]

## Deployments Commands

- List all the running deployments: 

  `$kubectl get deployments`

- Print out details about a specific deployment:

  `$kubectl describe deployment [depl name]`

- Create a desployment out of a config file

  `$kubectl apply -f [config file name]`

- Delete a deployment

  `$kubectl delete deployment [depl_name]`

- Refresk a deployment

  `$kubectl rollout estart deployment [depl_name]`

- Get events

`$kubectl get events`

- kubectl configuration View

`$kubectl config view`

## References

- [kubernetes minikube guide](https://kubernetes.io/es/docs/tutorials/hello-minikube/)

