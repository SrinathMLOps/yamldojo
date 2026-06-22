# Kubernetes YAML Dojo - Complete Index

## 📁 Directory Structure

```
yamls/
├── workloads/
│   ├── namespace.yaml
│   ├── pod.yaml
│   ├── deployment.yaml
│   ├── replicaset.yaml
│   ├── statefulset.yaml
│   ├── daemonset.yaml
│   ├── job.yaml
│   └── cronjob.yaml
├── networking/
│   ├── service-clusterip.yaml
│   ├── service-nodeport.yaml
│   ├── service-loadbalancer.yaml
│   ├── service-externalname.yaml
│   ├── service-headless.yaml
│   ├── ingress.yaml
│   ├── networkpolicy.yaml
│   ├── endpointslice.yaml
│   ├── gateway.yaml
│   └── httproute.yaml
├── config/
│   ├── configmap.yaml
│   └── secret.yaml
├── storage/
│   ├── persistentvolume.yaml
│   ├── persistentvolumeclaim.yaml
│   └── storageclass.yaml
├── rbac/
│   ├── serviceaccount.yaml
│   ├── role.yaml
│   ├── rolebinding.yaml
│   ├── clusterrole.yaml
│   └── clusterrolebinding.yaml
├── policy/
│   ├── hpa.yaml
│   ├── resourcequota.yaml
│   ├── limitrange.yaml
│   ├── poddisruptionbudget.yaml
│   └── priorityclass.yaml
├── observability/
│   ├── servicemonitor.yaml
│   └── prometheusrule.yaml
├── security/
│   ├── externalsecret.yaml
│   ├── certificate.yaml
│   ├── issuer.yaml
│   ├── clusterissuer.yaml
│   └── kyverno-policy.yaml
└── gitops/
    ├── argocd-application.yaml
    ├── helm-values.yaml
    └── kustomization.yaml
```

## 🎯 Categories & Files

### 1. Workloads (8 files)
- Namespace - Virtual cluster partitioning
- Pod - Smallest deployable unit
- Deployment - Replicated application
- ReplicaSet - Maintains stable replicas
- StatefulSet - Stateful application with persistent identity
- DaemonSet - Runs on every node
- Job - One-time or batch task
- CronJob - Scheduled jobs

### 2. Service & Networking (10 files)
- Service ClusterIP - Internal service discovery
- Service NodePort - External access via node ports
- Service LoadBalancer - Cloud load balancer integration
- Service ExternalName - External DNS integration
- Service Headless - Direct pod access without load balancing
- Ingress - HTTP(S) routing rules
- NetworkPolicy - Pod-level firewall
- EndpointSlice - Modern endpoint management
- Gateway - Gateway API entry point
- HTTPRoute - Gateway API routing rules

### 3. Config & Storage (5 files)
- ConfigMap - Non-secret configuration
- Secret - Sensitive data storage
- PersistentVolume - Cluster-level storage
- PersistentVolumeClaim - Storage request
- StorageClass - Dynamic volume provisioning

### 4. RBAC & Authorization (5 files)
- ServiceAccount - Pod identity
- Role - Namespaced permissions
- RoleBinding - Bind role to user/SA
- ClusterRole - Cluster-wide permissions
- ClusterRoleBinding - Bind cluster role globally

### 5. Scaling & Policy (5 files)
- HorizontalPodAutoscaler - Auto-scale based on metrics
- ResourceQuota - Resource usage limits per namespace
- LimitRange - Default/min/max limits per container
- PodDisruptionBudget - Minimum availability during disruptions
- PriorityClass - Pod execution priority

### 6. Observability (2 files)
- ServiceMonitor - Prometheus target discovery
- PrometheusRule - Alerting rules

### 7. Security (5 files)
- ExternalSecret - Vault/secret manager integration
- Certificate - TLS cert lifecycle management
- Issuer - Namespace-scoped cert issuer
- ClusterIssuer - Cluster-wide cert issuer
- Kyverno Policy - Admission controller policies

### 8. GitOps & Package Management (3 files)
- Argo CD Application - GitOps application
- Helm values.yaml - Helm chart values
- Kustomization.yaml - Kustomize overlay

## 📊 Quick Reference by Use Case

### For Interviews (Must Know)
1. Deployment
2. Service
3. Ingress
4. ConfigMap
5. Secret
6. PersistentVolumeClaim
7. HorizontalPodAutoscaler
8. ServiceAccount
9. Role & RoleBinding
10. CronJob

### For Production (DevOps/SRE)
Add to above:
1. StatefulSet
2. DaemonSet
3. NetworkPolicy
4. ResourceQuota
5. PodDisruptionBudget
6. ServiceMonitor
7. PrometheusRule
8. Kyverno Policy
9. Certificate/Issuer
10. Argo CD Application

### For Platform Engineering
Add to above:
1. ClusterRole & ClusterRoleBinding
2. Kustomization
3. Helm values
4. ExternalSecret
5. Gateway & HTTPRoute

## 🚀 How to Use These Files

### Copy Entire Directory
```bash
# Download all yamls
git clone https://github.com/SrinathMLOps/yamldojo.git
cd yamldojo/yamls
```

### Apply Individual Resources
```bash
kubectl apply -f yamls/workloads/namespace.yaml
kubectl apply -f yamls/config/configmap.yaml
```

### Apply Entire Category
```bash
kubectl apply -f yamls/rbac/
```

### Deploy with Kustomize
```bash
kubectl apply -k yamls/gitops/
```

## ✅ Learning Path

**Beginner:**
1. Namespace → Pod → Deployment → Service
2. ConfigMap → Secret
3. ServiceAccount

**Intermediate:**
4. Ingress → NetworkPolicy
5. StatefulSet → DaemonSet
6. HorizontalPodAutoscaler → ResourceQuota
7. Role → RoleBinding

**Advanced:**
8. PersistentVolume → StorageClass
9. PrometheusRule → ServiceMonitor
10. Certificate → Issuer
11. Kyverno Policy
12. Argo CD Application
13. Gateway API

## 🔗 Related Resources

- [Kubernetes Official Docs](https://kubernetes.io/docs/)
- [YAML Dojo Homepage](https://github.com/SrinathMLOps/yamldojo)
- [Helm Docs](https://helm.sh/)
- [Kustomize Docs](https://kustomize.io/)
- [Argo CD Docs](https://argoproj.github.io/cd/)

---
Last updated: June 2026
