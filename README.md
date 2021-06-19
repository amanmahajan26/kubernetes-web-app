# Steps for setup
## Minikube installation on mac
- brew update
- brew upgrade
- brew install hyperkit
- brew install minikube (installs kubectl[kubernetes-cli], docker-runtime and docker-daemon as well)

## Starting the application
bash setup.sh => outputs the ingress ip-address
	
# Application architecture/strategy
- The application is a basic flask app that runs on a local minikube cluster.
- It runs as a docker container and being a flask app listens on port 5000.
- It exposes 2 endpoints:
	- /            => "Well, hello there!" 
	- /healthcheck => "OK"
- It is dockerized and the image is available in docker hub:
	- docker pull amanmahajan26/flask-app
- The build process is automated using github workflow meaning on every commit or PR against master branch triggers the build pipeline which updates the docker image
- The container runs inside pod, the smallest computing unit in Kubernetes
- To maintain high availablity, we maintain 3 replicas of the pod which are managed by a Deployment
- The ingress resource does the load balancing and the service component is responsible for providing a single entrypoint for the pods
- The container also have liveness and readiness probes configured to ensure that containers are healthy and ready before serving traffic 

# Connecting to application
Launch the ingress ip-address received as output of running setup.sh in browser