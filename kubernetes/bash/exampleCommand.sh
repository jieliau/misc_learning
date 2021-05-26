kubectl create -f yourYAMLFile.yaml
kubectl port-forward podName 3000:3000
kubectl rollout history deployment deploymentName
kubectl rollout undo deploy deploymentName --to-revision=2

kubectl get all -A
kubectl get pods -n yourNameSpace
kubectl logs pod/podName -n yourNameSpace
kubectl describe pod/podName -n yourNameSpace
kubectl edit (pod|deployment|service)/(podName|deploymentName|serviceName) -n yourNameSpace

#https://krew.sigs.k8s.io/docs/user-guide/setup/install/
kubectl krew install sniff
