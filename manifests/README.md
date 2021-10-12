# Fee5gc Kubernetes
### Namespace
```
$ kubectl apply -f 00_namespace.yaml
$ kubectl get ns
```

### Multus Daemonset
```
$ kubectl apply -f 01_multus_daemonset.yaml
```

### MongoDB
```
$ kubectl apply -k mongodb/
```

### UPF
```
$ kubectl apply -k upfb/
```

### NRF
```
$ kubectl apply -k nrf/
```

### AMF
```
$ kubectl apply -k amf/
```

### SMF
```
$ kubectl apply -k smf/
```

### UDR
```
$ kubectl apply -k udr/
```

### PCF
```
$ kubectl apply -k pcf/
```

### UDM
```
$ kubectl apply -k udm/
```

### NSSF
```
$ kubectl apply -k nssf/
```

### AUSF
```
$ kubectl apply -k ausf/
```

### WebUI
```
$ kubectl apply -k webui
$ kubectl get pod -n free5gc-k8s
$ kubectl describe pod <webui_pod_name> -n free5gc-k8s
or
kubectl get pods -n free5gc-k8s -o wide
```
```
IP : 'Check Endopoint'
Port : 5000

ID : admin
PW : free5gc
```

# UERANSIM Kubernetes
### gNB
```
$ kubectl apply -k gnb/
```

### UE
```
$ kubectl apply -k ue/
```

# Check Pod & System
### Pods
```
$ kubectl get pod -n free5gc-k8s -o wide
NAME                               READY   STATUS    RESTARTS   AGE     IP           NODE               NOMINATED NODE   READINESS GATES
free5gc-amf-6bb5f886fb-8cmxg       1/1     Running   0          27m     10.36.0.3    kube-worker2.lge   <none>           <none>
free5gc-ausf-56d644c48d-s4s4v      1/1     Running   0          54m     10.36.0.9    kube-worker2.lge   <none>           <none>
free5gc-gnb-94b46766f-zbwjb        1/1     Running   0          5m52s   10.36.0.12   kube-worker2.lge   <none>           <none>
free5gc-mongodb-0                  1/1     Running   0          69m     10.36.0.0    kube-worker2.lge   <none>           <none>
free5gc-n6dummy-5c84fcd8c5-g9wng   1/1     Running   0          53m     10.36.0.10   kube-worker2.lge   <none>           <none>
free5gc-nrf-797747d84d-d5rk8       1/1     Running   0          65m     10.36.0.2    kube-worker2.lge   <none>           <none>
free5gc-nssf-b574db45c-dccdg       1/1     Running   0          55m     10.36.0.8    kube-worker2.lge   <none>           <none>
free5gc-pcf-64776bc4c6-qsfm6       1/1     Running   0          58m     10.36.0.6    kube-worker2.lge   <none>           <none>
free5gc-smf-5c4dc9f9d6-2cklk       1/1     Running   0          64m     10.36.0.4    kube-worker2.lge   <none>           <none>
free5gc-udm-68f9f87cb-nxhzr        1/1     Running   0          57m     10.36.0.7    kube-worker2.lge   <none>           <none>
free5gc-udr-598ff4bc45-5qzpn       1/1     Running   0          59m     10.36.0.5    kube-worker2.lge   <none>           <none>
free5gc-ue-85998445c7-zhqvm        1/1     Running   0          47s     10.36.0.14   kube-worker2.lge   <none>           <none>
free5gc-upfb-656dd8dcdb-72rjk      1/1     Running   0          68m     10.36.0.1    kube-worker2.lge   <none>           <none>
free5gc-webui-75bc8d8694-l6q7b     1/1     Running   0          53m     10.36.0.11   kube-worker2.lge   <none>           <none>
```

### Services
```
$ kubectl get svc --all-namespaces
NAMESPACE     NAME              TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)                  AGE
default       kubernetes        ClusterIP   10.96.0.1        <none>        443/TCP                  83m
free5gc-k8s   free5gc-amf       ClusterIP   10.101.16.48     <none>        29518/TCP,38412/SCTP     35m
free5gc-k8s   free5gc-ausf      ClusterIP   10.107.151.234   <none>        29509/TCP                62m
free5gc-k8s   free5gc-gnb       ClusterIP   10.100.42.221    <none>        2151/UDP,2152/UDP        13m
free5gc-k8s   free5gc-mongodb   ClusterIP   10.97.165.191    <none>        27017/TCP                77m
free5gc-k8s   free5gc-nrf       ClusterIP   10.98.48.244     <none>        29510/TCP                72m
free5gc-k8s   free5gc-nssf      ClusterIP   10.102.62.112    <none>        29531/TCP                63m
free5gc-k8s   free5gc-pcf       ClusterIP   10.111.29.71     <none>        29507/TCP                65m
free5gc-k8s   free5gc-smf       ClusterIP   10.111.226.54    <none>        29502/TCP,8805/UDP       72m
free5gc-k8s   free5gc-udm       ClusterIP   10.96.78.19      <none>        29503/TCP                65m
free5gc-k8s   free5gc-udr       ClusterIP   10.106.44.26     <none>        29504/TCP                66m
free5gc-k8s   free5gc-ue        ClusterIP   10.97.13.203     <none>        2151/UDP                 8m23s
free5gc-k8s   free5gc-upfb      ClusterIP   10.104.124.221   <none>        2152/UDP,8805/UDP        75m
free5gc-k8s   free5gc-webui     ClusterIP   10.108.122.221   <none>        5000/TCP                 60m
kube-system   kube-dns          ClusterIP   10.96.0.10       <none>        53/UDP,53/TCP,9153/TCP   83m
```

### Labels
```
$ kubectl get pod --show-labels -n free5gc-k8s
NAME                               READY   STATUS    RESTARTS   AGE     LABELS
free5gc-amf-6bb5f886fb-8cmxg       1/1     Running   0          35m     app=free5gc-amf,pod-template-hash=6bb5f886fb
free5gc-ausf-56d644c48d-s4s4v      1/1     Running   0          62m     app=free5gc-ausf,pod-template-hash=56d644c48d
free5gc-gnb-94b46766f-zbwjb        1/1     Running   0          14m     app=free5gc-gnb,pod-template-hash=94b46766f
free5gc-mongodb-0                  1/1     Running   0          78m     app=free5gc-mongodb,controller-revision-hash=free5gc-mongodb-875d45995,statefulset.kubernetes.io/pod-name=free5gc-mongodb-0
free5gc-n6dummy-5c84fcd8c5-g9wng   1/1     Running   0          61m     app=free5gc-n6dummy,pod-template-hash=5c84fcd8c5
free5gc-nrf-797747d84d-d5rk8       1/1     Running   0          73m     app=free5gc-nrf,pod-template-hash=797747d84d
free5gc-nssf-b574db45c-dccdg       1/1     Running   0          63m     app=free5gc-nssf,pod-template-hash=b574db45c
free5gc-pcf-64776bc4c6-qsfm6       1/1     Running   0          66m     app=free5gc-pcf,pod-template-hash=64776bc4c6
free5gc-smf-5c4dc9f9d6-2cklk       1/1     Running   0          73m     app=free5gc-smf,pod-template-hash=5c4dc9f9d6
free5gc-udm-68f9f87cb-nxhzr        1/1     Running   0          65m     app=free5gc-udm,pod-template-hash=68f9f87cb
free5gc-udr-598ff4bc45-5qzpn       1/1     Running   0          67m     app=free5gc-udr,pod-template-hash=598ff4bc45
free5gc-ue-85998445c7-zhqvm        1/1     Running   0          8m55s   app=free5gc-ue,pod-template-hash=85998445c7
free5gc-upfb-656dd8dcdb-72rjk      1/1     Running   0          76m     app=free5gc-upfb,pod-template-hash=656dd8dcdb
free5gc-webui-75bc8d8694-l6q7b     1/1     Running   0          61m     app=free5gc-webui,pod-template-hash=75bc8d8694
```
