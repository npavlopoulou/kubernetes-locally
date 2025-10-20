start-cluster:
	minikube start --cpus=4 --memory=3918
	kubectl config use-context minikube

build-image:
	docker build -t my-python-app .
	minikube image load my-python-app

apply-helm-chart:
	helm install my-python-app ./helm-chart

run-service:
	minikube service my-python-app

stop-cluster:
	minikube stop