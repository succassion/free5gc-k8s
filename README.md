# test

# Check List
1. namespace
```
$ kubectl apply -f 00_namespace.yaml
$ kubectl get ns
```
2. mongodb
```
$ kubectl apply -k mongodb
$ kubectl get pod -n free5gc-k8s
```
3. webui
```
$ kubectl apply -k webui
$ kubectl get pod -n free5gc-k8s
$ kubectl describe pod <mongodb_pod_name> -n free5gc-k8s
...
IP:           10.36.0.2
...
    Port:          5000/TCP
...
```
and webconle
```
IP : 10.36.0.2
Port : 5000

ID : admin
PW : free5gc
```
