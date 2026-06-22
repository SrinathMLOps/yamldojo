# YAML Dojo — Kubernetes practice bench

A self-contained Kubernetes YAML practice tool. Pick a resource on the left,
study the reference manifest in the middle, then write it yourself in the
right-hand editor — it lints your YAML live (syntax errors, missing required
fields, wrong `apiVersion`/`kind`, naming convention issues).

No build step required to run it. `index.html` loads CodeMirror and js-yaml
from public CDNs at runtime.

**Contents:** [Hosting](#use-it-from-github-pages-recommended--one-link-opens-anywhere) ·
[Local use](#use-it-locally-instead) ·
[Search](#searching-for-a-resource) ·
[AI generation](#live-ai-generation-for-anything-missing) ·
[Built-in resources (37)](#current-built-in-resource-set-37) ·
[High-yield shortlist](#-high-yield-shortlist-for-interviews) ·
[Full ecosystem checklist (351)](#-full-kubernetes--cloud-native-ecosystem-checklist)

## Use it from GitHub Pages (recommended — one link, opens anywhere)

1. Create a new GitHub repo (e.g. `yaml-dojo`).
2. Add this `index.html` to the repo root and commit it.
3. In the repo: **Settings → Pages → Source → Deploy from a branch**, pick
   `main` and `/ (root)`, then save.
4. After a minute, it's live at `https://<your-username>.github.io/<repo>/`.
5. Bookmark that URL — open it any time, on any device, to practice.

⚠️ If you turn on AI generation (below) and plan to use it, keep this repo
**private**, or at least understand the trade-off described in that section.

## Use it locally instead

Double-click `index.html`, or run a tiny local server from this folder:

```
python3 -m http.server 8000
```

then open `http://localhost:8000`.

## Searching for a resource

The sidebar search matches resource names and aliases (try "eks", "gateway
api", "admission webhook"). 37 resources are built in — see the list below.

## Live AI generation for anything missing

If a search comes up empty, a **"✨ Generate with Claude"** button appears.
Clicking it:

1. Asks for your own Anthropic API key (once per browser session — kept only
   in memory, never written to disk, gone when you close the tab).
2. Calls `api.anthropic.com` directly from your browser with that key.
3. Drops the generated manifest into a new "AI-generated" section in the
   sidebar, validated through the same lint engine as everything else.

**Why it needs your own key, and why that matters if you publish this repo:**
making generation work without asking for a key would mean baking an API key
into the page's own JavaScript — and *anyone* visiting a public page can open
the browser's dev tools and read it straight out of the source or the network
tab. A key typed into the modal at runtime never touches the repo or the
page's source, so it isn't exposed to other visitors — but it does mean
re-entering it each session, and it does mean you're trusting your own
browser session with that key for that session, like any client tool. Treat
it the same way you'd treat pasting a key into `curl` on your own machine —
just don't do it on a shared/public computer.

Don't have time for that step? Skip it — just ask Claude, in your
conversation, to add the resource by name. Claude edits this file directly
and hands you a fresh copy.

## Current built-in resource set (37)

**Workloads:** Pod, Deployment, ReplicaSet, StatefulSet, DaemonSet, Job, CronJob, ReplicationController (legacy)
**Service & Networking:** Service, Ingress, NetworkPolicy, Endpoints, EndpointSlice, Gateway, HTTPRoute
**Config & Storage:** ConfigMap, Secret, PersistentVolume, PersistentVolumeClaim, StorageClass
**Cluster & RBAC:** Namespace, ServiceAccount, Role, RoleBinding, ClusterRole, ClusterRoleBinding
**Scaling & Policy:** HorizontalPodAutoscaler, ResourceQuota, LimitRange, PodDisruptionBudget, PriorityClass
**Extensibility:** CustomResourceDefinition, Lease, RuntimeClass, MutatingWebhookConfiguration, ValidatingWebhookConfiguration
**Cloud Provisioning (not core k8s):** eksctl ClusterConfig — flagged clearly since it's an AWS/eksctl concept, not a `kubectl`-applyable object
**AI-generated:** empty until you generate something — resets every time you reload the page
## ⭐ High-yield shortlist for interviews

Pulled together from every "master this first / most important / most powerful" call-out in the source checklist, deduplicated into one 54-item list.

**Already covered in the tool (24):** Deployment, Service, Ingress, ConfigMap, Secret, PersistentVolumeClaim, StorageClass, HorizontalPodAutoscaler, NetworkPolicy, ServiceAccount, Role, RoleBinding, CronJob, StatefulSet, DaemonSet, PodDisruptionBudget, HTTPRoute, Job, Gateway, ClusterRole, ClusterRoleBinding, CustomResourceDefinition, MutatingWebhookConfiguration, ValidatingWebhookConfiguration.

**Not yet interactive — prioritize these if you're extending the tool or just studying (30):**
- Argo CD Application
- Helm values.yaml
- Karpenter NodePool
- Karpenter EC2NodeClass
- Karpenter NodeClaim
- Argo Rollout
- AnalysisTemplate
- ExternalSecret
- ClusterSecretStore
- CiliumNetworkPolicy
- GatewayClass
- TargetGroupBinding
- SecurityGroupPolicy
- Prometheus
- Alertmanager
- OpenTelemetryCollector
- RayCluster
- SparkApplication
- Crossplane Composition
- Tekton Pipeline
- PrometheusRule
- ServiceMonitor
- Cluster API MachineDeployment
- KServe InferenceService
- SeldonDeployment
- KafkaTopic
- PostgreSQL Cluster
- MetalLB IPAddressPool
- Trivy VulnerabilityReport
- VolumeSnapshot

## 📋 Full Kubernetes & cloud-native ecosystem checklist

Everything else from the master checklist — not already wired into the tool (37) and not already named in the shortlist above (30) — 351 items across 50 categories, deduplicated. This deliberately mixes native Kubernetes API objects, SIG projects (Gateway API, Cluster API), CNCF projects (Argo, Flux, cert-manager, Cilium), and vendor/operator CRDs (AWS, Crossplane, Kyverno, Trivy, KServe, etc.) — exactly the sprawl the source material itself called out. None of these have a hands-on lint card yet. Turn any of them into one with the in-tool **✨ Generate with Claude** button, or by asking Claude in chat to add it.

**Native Kubernetes — Workloads**
- PodTemplate
- Binding

**Native Kubernetes — Service Discovery & Networking**
- IngressClass

**Native Kubernetes — Storage**
- VolumeAttachment
- CSIDriver
- CSINode
- CSIStorageCapacity
- VolumeAttributesClass

**Native Kubernetes — RBAC & Security**
- CertificateSigningRequest
- SecurityContext
- PodSecurityContext

**Native Kubernetes — Admission & API Extension**
- APIService
- MutatingAdmissionPolicy
- MutatingAdmissionPolicyBinding
- ValidatingAdmissionPolicy
- ValidatingAdmissionPolicyBinding
- ConversionWebhook
- AggregatedClusterRole

**Native Kubernetes — Scheduling**
- Taints and Tolerations
- NodeSelector
- Node Affinity
- Pod Affinity
- Pod Anti-Affinity
- TopologySpreadConstraints

**Native Kubernetes — Auth Reviews (API calls, not files you usually author)**
- TokenRequest
- TokenReview
- SubjectAccessReview
- LocalSubjectAccessReview
- SelfSubjectAccessReview
- SelfSubjectRulesReview
- SelfSubjectReview

**Native Kubernetes — Events, Coordination & Flow Control**
- Event
- FlowSchema
- PriorityLevelConfiguration

**Native Kubernetes — Cluster & Node Objects**
- Node
- ComponentStatus (legacy)

**Native Kubernetes — Snapshots**
- VolumeSnapshotContent
- VolumeSnapshotClass
- VolumeSnapshotLocation

**Pod-spec building blocks (fields inside Pod/Deployment, not separate kinds)**
- InitContainer
- Sidecar Container
- Readiness Probe
- Liveness Probe
- Startup Probe
- ImagePullSecret
- ephemeralContainers
- terminationGracePeriodSeconds
- dnsPolicy
- hostNetwork / hostPID / hostIPC
- serviceAccountName
- volumes / volumeMounts
- env / envFrom
- resources (requests/limits)
- lifecycle
- terminationMessagePolicy
- runtimeClassName
- priorityClassName

**Service variants (all `kind: Service`, different `spec.type`)**
- ClusterIP Service
- NodePort Service
- LoadBalancer Service
- ExternalName Service
- Headless Service

**Gateway API (SIG-Network)**
- GRPCRoute
- TCPRoute
- TLSRoute
- UDPRoute
- ReferenceGrant
- BackendTLSPolicy

**Helm**
- Helm Chart.yaml
- Helm templates/deployment.yaml
- Helm templates/service.yaml
- Helm templates/ingress.yaml

**Kustomize**
- Kustomization.yaml

**Argo Ecosystem**
- Argo CD ApplicationSet
- Argo CD AppProject
- Argo Workflow
- Argo CronWorkflow
- Argo WorkflowTemplate
- Argo ClusterWorkflowTemplate
- Argo EventSource
- Argo Sensor
- ClusterAnalysisTemplate
- Experiment
- AnalysisRun

**Flux CD**
- GitRepository
- HelmRepository
- HelmRelease
- Kustomization
- ImageRepository
- ImagePolicy
- ImageUpdateAutomation
- Bucket
- OCIRepository

**Node Provisioning / Autoscaling**
- Karpenter NodeClass
- Cluster Autoscaler Deployment
- Cluster Autoscaler ConfigMap
- VerticalPodAutoscaler
- VerticalPodAutoscalerCheckpoint
- Provisioner

**Cluster API**
- Cluster
- AWSCluster
- AzureCluster
- GCPCluster
- DockerCluster
- KubeadmControlPlane
- KubeadmConfigTemplate
- AWSMachineTemplate
- AzureMachineTemplate
- GCPMachineTemplate
- Machine
- MachineDeployment
- MachineSet
- MachineHealthCheck
- ClusterClass

**AWS / EKS Add-ons**
- AWSNodeTemplate
- ENIConfig
- FargateProfile
- EKS Addon
- IRSA ServiceAccount
- AWS Auth ConfigMap
- IngressClassParams
- AWSLoadBalancerController ServiceAccount

**AWS Controllers for Kubernetes (ACK)**
- S3 Bucket
- DynamoDB Table
- RDS DBInstance
- ECR Repository
- IAM Role
- IAM Policy
- Lambda Function
- SNS Topic
- SQS Queue

**Cilium / eBPF**
- CiliumClusterwideNetworkPolicy
- CiliumEgressGatewayPolicy
- CiliumLoadBalancerIPPool
- CiliumL2AnnouncementPolicy
- CiliumBGPPeeringPolicy
- CiliumBGPClusterConfig
- CiliumBGPAdvertisement
- CiliumBGPPeerConfig

**External DNS / Calico Networking**
- DNSEndpoint
- HostEndpoint
- GlobalNetworkPolicy
- GlobalNetworkSet
- IPPool
- BGPConfiguration
- FelixConfiguration
- BGPPeer

**MetalLB**
- IPAddressPool
- L2Advertisement
- BGPAdvertisement
- BFDProfile

**Ingress / Gateway vendor extras**
- NGINX VirtualServer
- NGINX VirtualServerRoute
- NGINX TransportServer
- KongPlugin
- KongClusterPlugin
- KongIngress
- Ambassador Mapping
- Ambassador Host

**Istio / Service Mesh**
- EnvoyFilter
- Sidecar
- WorkloadEntry
- WorkloadGroup
- RequestAuthentication
- Telemetry
- WasmPlugin

**Linkerd**
- Linkerd Server
- Linkerd ServerAuthorization
- Linkerd AuthorizationPolicy
- Linkerd MeshTLSAuthentication
- Linkerd NetworkAuthentication

**Kuma / Consul**
- Kuma Mesh
- Kuma TrafficRoute
- Kuma TrafficPermission
- Kuma TrafficTrace
- Kuma TrafficLog
- Kuma FaultInjection
- Consul ServiceDefaults
- Consul ServiceIntentions
- Consul ProxyDefaults

**Cert-Manager**
- Certificate
- Issuer
- ClusterIssuer
- CertificateRequest
- Order
- Challenge

**External Secrets / Secrets Management**
- SecretStore
- PushSecret
- ClusterExternalSecret
- SealedSecret
- VaultStaticSecret
- VaultDynamicSecret
- VaultAuth
- VaultConnection

**Monitoring / Observability**
- PodMonitor
- Probe
- ScrapeConfig
- ThanosRuler
- Instrumentation
- Grafana
- GrafanaDashboard
- LokiStack
- TempoStack
- Fluent Bit ConfigMap
- NGINX Ingress Controller values.yaml

**Policy & Admission Control**
- Kyverno Policy
- Kyverno ClusterPolicy
- Kyverno PolicyException
- Kyverno ClusterPolicyException
- OPA Gatekeeper ConstraintTemplate
- OPA Gatekeeper Constraint
- Gatekeeper Assign
- Gatekeeper AssignMetadata
- Gatekeeper ModifySet
- Gatekeeper Config

**Runtime Security & Image Trust**
- Trivy Operator VulnerabilityReport
- Trivy Operator ConfigAuditReport
- Trivy Operator ExposedSecretReport
- Trivy Operator ClusterComplianceReport
- FalcoRule
- Falco Rules ConfigMap
- FalcoSidekick
- ImagePolicyWebhook
- Cosign ClusterImagePolicy
- Sigstore PolicyController

**Sandbox / Alternative Runtimes**
- KataConfig
- SandboxConfig
- gVisor RuntimeClass

**Backup / Disaster Recovery**
- Velero Backup
- Velero Restore
- Velero Schedule
- BackupStorageLocation
- DataUpload
- DataDownload
- Kasten Policy
- Kasten Profile
- Kasten Blueprint
- Kanister ActionSet
- Kanister Blueprint
- Backup Schedule YAML

**Storage Operators**
- StorageVersion
- StorageVersionMigration
- LocalVolumeSet
- LVMCluster
- CephCluster
- CephBlockPool
- CephFilesystem
- CephObjectStore

**MLOps / AI Workload Operators**
- RayJob
- RayService
- TFJob
- PyTorchJob
- MPIJob
- XGBoostJob
- InferenceService
- ServingRuntime
- ClusterServingRuntime
- TrainedModel
- Notebook
- Profile
- Trial
- Suggestion
- ModelMesh ServingRuntime
- SeldonRuntime
- BentoDeployment
- KServe InferenceGraph
- Triton InferenceServer
- Volcano Job
- Volcano Queue
- Volcano PodGroup

**Chaos Engineering**
- ChaosExperiment
- ChaosEngine
- NetworkChaos
- PodChaos
- StressChaos
- IOChaos
- TimeChaos
- DNSChaos

**Crossplane (Cloud infra from Kubernetes)**
- ProviderConfig
- CompositeResourceDefinition
- Composition
- Claim
- ManagedResource
- Object
- Provider
- Configuration (Crossplane)

**Knative / Serverless**
- Knative Service
- Route
- Revision
- Broker
- Trigger
- EventingChannel

**Tekton CI/CD**
- Task
- ClusterTask
- Pipeline
- PipelineRun
- TaskRun
- TriggerTemplate
- TriggerBinding
- EventListener
- Tekton Resolver
- Tekton StepAction

**Flagger (Progressive Delivery)**
- Flagger Canary
- Flagger MetricTemplate
- Flagger AlertProvider

**Databases on Kubernetes**
- MySQL Cluster
- MongoDB
- Redis
- Zookeeper
- CassandraDatacenter
- Elasticsearch
- OpenSearchCluster
- ClickHouseInstallation

**Messaging / Streaming**
- Kafka
- KafkaUser
- KafkaConnect
- KafkaConnector
- RabbitmqCluster
- NATSCluster
- PulsarCluster

**CI/CD Platforms**
- Jenkins
- JenkinsAgent
- Drone Pipeline

**OpenShift**
- OpenShift Route
- BuildConfig
- ImageStream
- DeploymentConfig
- SecurityContextConstraints
- Project
- Template

**Operator SDK / OLM**
- OperatorGroup
- Subscription
- ClusterServiceVersion
- InstallPlan
- CatalogSource

**FinOps / Cost Visibility**
- Kubecost Allocation
- Kubecost CloudCost
- OpenCost Exporter Config

**Node Hardware / GPU**
- Nvidia DevicePlugin
- GPU Operator ClusterPolicy
- NodeFeatureDiscovery
- NodeFeatureRule
- NodeResourceTopology
- SriovNetwork
- SriovNetworkNodePolicy

**Dynamic Resource Allocation (newer scheduling APIs)**
- LeaseCandidate
- ResourceClaim
- ResourceClaimTemplate
- DeviceClass
- ResourceSlice
- PodSchedulingContext
