# eks-module
Personal eks module for quickly bootstrapping a cluster for learning.


## Most Important Kubernetes Object for workload Deployment
- workloads:
  - Pod
  - Deployment

- Networking
  - Service
  - Ingress
  - Network Policy

- App config
  - Secret
  - ConfigMap

- Workload identity
  - Serviceaccount

## How to connect  to QAWS for Terraform Provisoining

1.AWS CONFIGURE -- PROFILE   KUBE-LESSION
2.Add AWS APP KEY, SECRET, REGION , FORMAT
3. export AWS_PROFILE=kube-lession
4. AWS s3 ls  to test connnevtivity



## How to connec to cluster after provisionin on AWS
1. Get the AWS app key and Secrret from AWS
2. Ensure AWS cli and Kubectls are o=installed on you local pc
3. Configure AWS cli (AWS configure ) if not done
4. run this to get identity details    "aws sts get-caller-identity"
5. then this :aws eks update-kubeconfig --region us-east-1 --name poc-cluster
6. kubectl get nodes  to confirm connection




## K8 commands

kubectl apply -f .\service1.yaml 
kubectl apply -f deployment,yaml   







