# Promethus & Grafana

## Promethus

### Add namespace
```
$ kubectl create ns monitoring
```

### Relase Promethus
```
$ kubectl apply -f prometheus-cluster-role.yaml
$ kubectl apply -f prometheus-config-map.yaml
$ kubectl apply -f prometheus-deployment.yaml
$ kubectl apply -f prometheus-node-exporter.yaml
$ kubectl apply -f prometheus-svc.yaml
```
ip:30003

### Check Prometheus Pod
Node Number : 2
```
$ kubectl get pod -n monitoring
NAME                                     READY   STATUS    RESTARTS   AGE
node-exporter-99w2v                      1/1     Running   0          18s
node-exporter-f9q7f                      1/1     Running   0          18s
prometheus-deployment-7bcb5ff899-h4rb7   1/1     Running   0          65s
```

## Kube State Metrics

### Release Kube State Metrics
```
$ kubectl apply -f kube-state-cluster-role.yaml
$ kubectl apply -f kube-state-deployment.yaml
$ kubectl apply -f kube-state-svcaccount.yaml
$ kubectl apply -f kube-state-svc.yaml
```

### Check kube-state-metrics
```
$ kubectl get pod -n kube-system
NAME                                       READY   STATUS    RESTARTS   AGE
...
kube-state-metrics-59bd4d9d-nbfrq          1/1     Running   0          50s
```

## Grafana
```
$ kubectl apply -f grafana.yaml
```
ip:30004

### Check Grafana
```
$ kubectl get pod -n monitoring
NAME                                     READY   STATUS    RESTARTS   AGE
grafana-799c99855d-kxhkm                 1/1     Running   0          16s
```


