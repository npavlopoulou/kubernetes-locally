# kubernetes-locally
This repository explain how to deploy a simple Python app to a local Kubernetes cluster

# How to use this repository

## Install dependencies
```bash
brew install minikube
brew install helm
```

```bash
# Prerequisites: Install Docker and Homebrew


git clone https://github.com/npavlopoulou/kubernetes-locally.git
cd kubernetes-locally
make start-cluster
make build-image
make apply-helm-chart
make run-service
```

# Prerequisites
- Docker desktop
- Homebrew